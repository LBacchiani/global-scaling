import pandas as pd
import numpy as np
import torch
import numpy.linalg as ln
from torch.autograd import Variable
import matplotlib.pyplot as plt

torch.manual_seed(42)

col2use = ['date_month_1', 'date_month_2','date_month_3','date_month_4','date_month_5','date_month_6','date_month_7',
           'date_month_8','date_month_9','date_month_10','date_month_11','date_month_12',
           'date_day_1','date_day_2','date_day_3','date_day_4','date_day_5','date_day_6','date_day_7','date_day_8',
           'date_day_9','date_day_10','date_day_11','date_day_12','date_day_13','date_day_14','date_day_15','date_day_16',
           'date_day_17','date_day_18','date_day_19','date_day_20','date_day_21','date_day_22','date_day_23','date_day_24',
           'date_day_25','date_day_26','date_day_27','date_day_28','date_day_29','date_day_30','date_day_31',
           'date_dayOfWeek_0','date_dayOfWeek_1','date_dayOfWeek_2','date_dayOfWeek_3','date_dayOfWeek_4',
           'date_dayOfWeek_5','date_dayOfWeek_6',
           'date_hour_0','date_hour_1','date_hour_2','date_hour_3','date_hour_4','date_hour_5','date_hour_6',
           'date_hour_7','date_hour_8','date_hour_9','date_hour_10','date_hour_11','date_hour_12','date_hour_13',
           'date_hour_14','date_hour_15','date_hour_16','date_hour_17','date_hour_18','date_hour_19','date_hour_20',
           'date_hour_21','date_hour_22','date_hour_23',
           'date_minute_0','date_minute_1','date_minute_2','date_minute_3','date_minute_4','date_minute_5',
           'date_minute_6','date_minute_7','date_minute_8','date_minute_9','date_minute_10','date_minute_11',
           'date_minute_12','date_minute_13','date_minute_14','date_minute_15','date_minute_16','date_minute_17',
           'date_minute_18','date_minute_19','date_minute_20','date_minute_21','date_minute_22','date_minute_23',
           'date_minute_24','date_minute_25','date_minute_26','date_minute_27','date_minute_28','date_minute_29',
           'date_minute_30','date_minute_31','date_minute_32','date_minute_33','date_minute_34','date_minute_35',
           'date_minute_36','date_minute_37','date_minute_38','date_minute_39','date_minute_40','date_minute_41',
           'date_minute_42','date_minute_43','date_minute_44','date_minute_45','date_minute_46','date_minute_47',
           'date_minute_48','date_minute_49','date_minute_50','date_minute_51','date_minute_52','date_minute_53',
           'date_minute_54','date_minute_55','date_minute_56','date_minute_57','date_minute_58','date_minute_59',
           'date_second_0','date_second_1','date_second_2','date_second_3','date_second_4','date_second_5',
           'date_second_6','date_second_7','date_second_8','date_second_9','date_second_10','date_second_11',
           'date_second_12','date_second_13','date_second_14','date_second_15','date_second_16','date_second_17',
           'date_second_18','date_second_19','date_second_20','date_second_21','date_second_22','date_second_23',
           'date_second_24','date_second_25','date_second_26','date_second_27','date_second_28','date_second_29',
           'date_second_30','date_second_31','date_second_32','date_second_33','date_second_34','date_second_35',
           'date_second_36','date_second_37','date_second_38','date_second_39','date_second_40','date_second_41',
           'date_second_42','date_second_43','date_second_44','date_second_45','date_second_46','date_second_47',
           'date_second_48','date_second_49','date_second_50','date_second_51','date_second_52','date_second_53',
           'date_second_54','date_second_55','date_second_56','date_second_57','date_second_58','date_second_59',
           'mail_count_past','mail_count_future']


class Net(torch.nn.Module):
    def __init__(self, inputSize, n_hidden,n_hidden2, n_hidden3,outputSize):
        super(Net, self).__init__()
        self.layers = torch.nn.Sequential(
                torch.nn.Linear(inputSize,n_hidden),
                torch.nn.ReLU(),
                torch.nn.Linear(n_hidden,n_hidden2),
                torch.nn.ReLU(),
                torch.nn.Linear(n_hidden2,n_hidden3),
                torch.nn.ReLU(),
                torch.nn.Linear(n_hidden3,outputSize)
                )
        
    def forward(self, x):
        return self.layers(x)



class EnronDataset(torch.utils.data.Dataset):
    def __init__(self,x, y, scale_data=True):
        if not torch.is_tensor(x) and not torch.is_tensor(y):
            self.x = torch.from_numpy(x)
            self.y = torch.from_numpy(y)
            
            
    def __len__(self):
        return len(self.x)
    
    def __getitem__(self, i):
        return self.x[i], self.y[i]



df = pd.read_csv('Enron_A2B2_nominal.csv',usecols=col2use,decimal=",",dtype=np.float64)

col2use.remove('mail_count_future')

print("shuffle the samples and creating training and test sets")
df_test = df.sample(frac = 0.2, random_state = 99)
df_train = df.drop(df_test.index)
x=df_train[col2use]
y=df_train['mail_count_future'].to_numpy()
x=x.to_numpy()


x_test=df_test[col2use]
x_test=torch.from_numpy(x_test.to_numpy()).float()
y_test=torch.from_numpy(df_test['mail_count_future'].to_numpy()).float()
dataset = EnronDataset(x,y)
trainloader=torch.utils.data.DataLoader(dataset, batch_size=2**10, shuffle=True, num_workers=1)
print("initializing model")
inputDim = len(col2use)
outputDim = 1
learningRate = 1e-4
epochs = 3000
n_hidden = 375
n_hidden2 = 187
n_hidden3 = 93
net = Net(inputDim, n_hidden,n_hidden2,n_hidden3, outputDim)
loss_f = torch.nn.MSELoss() #mean squared error
optimizer = torch.optim.Adam(net.parameters(), lr = learningRate) 

print("start training")
loss=0
current_loss=0
loss_list=[]
for epoch in range(0, epochs):
    
    for i,data in enumerate(trainloader,0):
        inputs, targets = data
        inputs, targets = inputs.float(), targets.float()
        targets = targets.reshape(((targets.shape[0], 1)))
        
        optimizer.zero_grad()
        outputs = net(inputs)
        
        loss= loss_f(outputs, targets)
        
        loss.backward()
        current_loss += loss.item()
        optimizer.step()
        
    if(epoch%1==0 or epoch==epochs-1):
        l = current_loss/i
        print('epoch {}, loss {}'.format(epoch, l))
        loss_list.append(l)
        current_loss=0

print("end training")
with torch.no_grad():
    predicted = net(x_test)

y_test=y_test.detach().numpy()
predicted=predicted.reshape(-1,1)
predicted=predicted.detach().numpy()
predicted = np.int_(predicted)
predicted= predicted.T[0]
i=0
for a in predicted:
    if a<0:
        predicted[i]=0
    i+=1
print("PREDETTI")
print(predicted)
print("VERI")
print(y_test)
Err=(ln.norm(y_test-predicted,ord=2)/ln.norm(y_test,2))*100
print("Errore")
print(Err)



plt.figure(figsize=(10, 5))
plt.title("Mail predette")
plt.plot(range(len(predicted)),predicted,'g')
plt.savefig("img/hour/predicted_A10B10.png",dpi=72)
plt.show()

plt.figure(figsize=(10, 5))
plt.title("Mail reali (set di test)")
plt.plot(range(len(y_test)),y_test,'c')
plt.savefig("img/hour/ytest_A10B10.png",dpi=72)
plt.show()

plt.figure(figsize=(10, 5))
plt.title("Confronto tra valori reali e predetti su 300 campioni")
plt.plot(range(len(y_test[28100:28400])),y_test[28100:28400],'c')
plt.plot(range(len(predicted[28100:28400])),predicted[28100:28400],'g')
plt.legend(["Valori reali","Valori predetti"])
plt.savefig("img/hour/comparison_A10B10.png",dpi=72)
plt.show()

plt.figure(figsize=(10, 5))
plt.title("Loss")
plt.xlabel("Steps")
plt.ylabel("Mean squared error")
plt.plot(range(len(loss_list)),loss_list,'b')
plt.grid(which='both')
plt.savefig("img/hour/loss_A10B10.png",dpi=72)
plt.show()

#torch.save(net,"model_trained2_A2B2")
