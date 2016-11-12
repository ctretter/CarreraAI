# set Pathes
set PathLocalSynDir [pwd]
set PathLocalSynLayDir ${PathLocalSynDir}/../
set PathUnitToRoot ../../../..
set PathGlobalSynLayDir ${PathLocalSynLayDir}/${PathUnitToRoot}/flw/synlayQuartus/

#searching for TimingConstraints.sdc on root level
if [file exists ${PathLocalSynLayDir}/${PathUnitToRoot}/TimingConstraints.sdc] then {
    source ${PathLocalSynLayDir}/${PathUnitToRoot}/TimingConstraints.sdc
}
#searching for TimingConstraints.sdc on group level
if [file exists ${PathLocalSynLayDir}/../../../TimingConstraints.sdc] then {
    source ${PathLocalSynLayDir}/../../../TimingConstraints.sdc
}
#searching for TimingConstraints.sdc on unit level
if [file exists ${PathLocalSynLayDir}/../../TimingConstraints.sdc] then {
    source ${PathLocalSynLayDir}/../../TimingConstraints.sdc
}
