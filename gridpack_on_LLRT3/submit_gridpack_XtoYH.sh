# Script to generate Madgraph gridpacks for X->YH process with different MY and MX hypotheses

# List of argument
MX="650 750 850 950 1100 1300"
MY="170 550 650"

# looping on input args
for mx in $MX
do
    for my in $MY
    do
	# check if (MX,MY) combination makes sense
	if ((mx>my+125))
	then

	    echo "${mx} ${my}"
	    
	    # find input madgraph datacards
	    CARDS=./NMSSM_XToYH_221202/NMSSM_XToYH_MX_${mx}_MY_${my}/
	    if [ -d "$CARDS" ]; then


		# Check if a gridpack already exist for this card
		FILE=./gridpacks_XtoYH_ext_20220709/NMSSM_XToYH_MX_${mx}_MY_${my}_slc7_amd64_gcc700_CMSSW_10_6_19_tarball.tar.xz
		if [ -f "$FILE" ]; then
		    echo "$FILE exists."

		# if not, submit the job
		else 
		    /opt/exp_soft/cms/t3/t3submit ./sub.sh ${mx} ${my}
		fi # if file exists

	    else 
		echo "No cards for mX=${mx}, mY=${my}."
	    fi # if cards exist

	fi # if mass comb. is ok
    done
done
