
################################ Variables ####################################
set route_0_optimze_1 1

########### Global/Detialed Routing ############
set max_m_layer 6

if {$route_0_optimze_1 == 0} {
setNanoRouteMode -quiet -routeTopRoutingLayer $max_m_layer
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -quiet -routeSiEffort max

routeDesign -globalDetail -viaOpt -wireOpt

} else {

refinePlace -preserveRouting
setNanoRouteMode -routeWithEco true
setNanoRouteMode -droutePostRouteSwapVia true
globalDetailRoute

}
