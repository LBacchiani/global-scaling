# ABS-Simulations-Comparison

The predictiveGlobalScaling directory contains the model for the simulation with architecture-level adaptation with the simulation of a workload prediction (to try to be better than normal globalScaling). The workload prediction is realized through a neural network implementing a nonlinear regression.
In particular InvariantsDeployer.abs, BaseScale.abs, Scale1.abs, Scale2.abs, Scale3.abs and Scale4.abs contain the orchestrations. Furthermore, code.abs contains the simulation's model.
Finally, inside the workload_predictor directory there is the file "predictor.py" which contains the code to train the model used to do the predictions. Inside the file there are both the class to create the model and the loop for the training.

The globalScaling directory contains the model for the simulation with architecture-level adaptation. In particular InvariantsDeployer.abs, BaseScale.abs, Scale1.abs, Scale2.abs, Scale3.abs and Scale4.abs contain the orchestrations. Finally code.abs contains the simulation's model.

The localScaling directory contains the model for the simulation with local-level adaptation. In particular *Deployer.abs contains the orchestration for the single microservice, while BaseScale.abs and code.abs contains the same code described above. BalancerMonitor.abs contains the code implementing the monitor in charge of watching single microservice's state.

## Executing ABS Simulations

The simulation can be executed via docker. First, you need to start a container containing the ABS code with:

```bash
docker run --entrypoint="/bin/bash" -i --rm -t lorenzobacchiani/absglobalscaling
```
The container is initially in abs-simulations/.
To change the simulation parameters (e.g., inbound workload, predicted workload, enable proactivity and/or reactivity), you need to go in [param.abs](abs-simulations/globalScaling/param.abs) (for global scaling) and 
[param.abs](abs-simulations/localScaling/param.abs) (for local scaling) and comment/uncomment the parameters you want to discard/use, using vim as editor (it is already installed within the container).

### Global Scaling
To compile the ABS code for global scaling (from abs-simulations/):

```bash
cd globalScaling/
```
```bash
./compile.sh
```

To run the ABS code for global scaling:

```bash
gen/erl/run
```

If you want to test our mixing technique go to [workload_mixer.abs](abs-simulations/globalScaling/workload_mixer.abs) and [monitor.abs](abs-simulations/globalScaling/monitor.abs) and uncomment everything tagged with '//OUR MIXING TECHNIQUE' and comment everything tagged with '//LITERATURE MIXING TECHNIQUE'.

If you want to use the mixing technique from [1] do viceversa.

### Local Scaling
To compile the ABS code for local scaling (from abs-simulations/):

```bash
cd localScaling/
```
```bash
./compile.sh
```

To run the ABS code for local scaling:

```bash
gen/erl/run
```

[1] [Agile dynamic provisioning of multi-tier internet applications](https://dl.acm.org/doi/10.1145/1342171.1342172)

