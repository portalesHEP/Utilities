# read input args
MassX=$1
MassY=$2

# Go into working directory
cd /home/llr/cms/portales/hhbbtautau/gridpack_generation/genproductions/bin/MadGraph5_aMCatNLO

# Run script(s)
PYTHONPATH=$PYTHONPATH:/usr/lib64/python2.7/site-packages;\
./gridpack_generation.sh NMSSM_XToYH_MX_${MassX}_MY_${MassY} ./NMSSM_XToYH_221202/NMSSM_XToYH_MX_${MassX}_MY_${MassY}

mv /home/llr/cms/portales/hhbbtautau/gridpack_generation/genproductions/bin/MadGraph5_aMCatNLO//NMSSM_XToYH_MX_${MassX}_MY_${MassY}*.tar.xz /home/llr/cms/portales/hhbbtautau/gridpack_generation/genproductions/bin/MadGraph5_aMCatNLO/gridpacks_XtoYH_ext_20221202/
