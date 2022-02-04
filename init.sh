cd abstools ;
./gradlew assemble || ./gradlew assemble ;
cd ../ ;
cd ABS-Simulations-Comparison/globalScaling ;
../../abstools/frontend/bin/bash/absc --erlang *.abs ;
cd ../ ;
cd predictiveGlobalScaling ;
../../abstools/frontend/bin/bash/absc --erlang *.abs ;
cd ../ ;
cd oracleGlobalScaling ;
../../abstools/frontend/bin/bash/absc --erlang *.abs ;
cd ../ ;
cd localScaling ;
../../abstools/frontend/bin/bash/absc --erlang *.abs ;
cd ../../
