# ABS-Simulations-Comparison

The globalScalingSimulation directory contains the model for the simulation with arichitecture-level adaptation. In particular InvariantsDeployer.abs, BaseScale.abs, Scale1.abs, Scale2.abs and Scale3.abs contain the orchestrations. Finally code.abs contains the simulation's model.

The localScalingSimulation directory contains the model for the simulation with local-level adaptation. In particular *Deployer.abs contains the orchestration for the single microservice, while BaseScale.abs and code.abs contains the same code described above. BalancerMonitor.abs contains the code implementing the monitor in charge of watching system's state.

The graphs directory contains the visual representation of the expected results.
