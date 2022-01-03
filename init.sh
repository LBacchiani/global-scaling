cd abstools ;
./gradlew assemble || ./gradlew assemble ;
cd ../ ;
cd ABS-Simulations-Comparison/globalScaling ;
../../abstools/frontend/bin/bash/absc --erlang *.abs ;
cd ../ ;
cd predictiveGlobalScaling ;
../../abstools/frontend/bin/bash/absc --erlang *.abs ;
cd ../ ;
cd oracleScaling ;
../../abstools/frontend/bin/bash/absc --erlang *.abs ;
cd ../../
