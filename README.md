# ABS-Simulations-Comparison

The predictiveGlobalScaling directory contains the model for the simulation with architecture-level adaptation with the simulation of a workload prediction (to try to be better than normal globalScaling). The workload prediction is realized through a neural network implementing a nonlinear regression.
In particular InvariantsDeployer.abs, BaseScale.abs, Scale1.abs, Scale2.abs, Scale3.abs and Scale4.abs contain the orchestrations. Furthermore, code.abs contains the simulation's model.
Finally, inside the workload_predictor directory there is the file "predictor.py" which contains the code to train the model used to do the predictions. Inside the file there are both the class to create the model and the loop for the training.

The globalScaling directory contains the model for the simulation with architecture-level adaptation. In particular InvariantsDeployer.abs, BaseScale.abs, Scale1.abs, Scale2.abs, Scale3.abs and Scale4.abs contain the orchestrations. Finally code.abs contains the simulation's model.

The localScaling directory contains the model for the simulation with local-level adaptation. In particular *Deployer.abs contains the orchestration for the single microservice, while BaseScale.abs and code.abs contains the same code described above. BalancerMonitor.abs contains the code implementing the monitor in charge of watching single microservice's state.

The graphs directory contains the visual representation of the expected results.
