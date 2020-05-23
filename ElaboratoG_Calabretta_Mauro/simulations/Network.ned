package elaboratog_calabretta_mauro.simulations;


import inet.networklayer.configurator.contract.INetworkConfigurator;
import inet.networklayer.ipv4.RoutingTableRecorder;
import inet.node.inet.AdhocHost;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.integrated.IntegratedMultiVisualizer;


network Network
{
    parameters:
        @display("bgb=980.334,586.368");
        int num_tx;
        int num_frw;

    submodules:
        tx[num_tx]: AdhocHost {
            @display("p=382.53,199.26;i=,black,0");
        }
        networkConfigurator: <> like INetworkConfigurator {
            @display("p=937.26,51.66");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=937.26,163.59");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=937.26,307.5");
        }
        routingTableRecorder: RoutingTableRecorder {
            @display("p=933.57,484.62");
        }
        rx: AdhocHost {
            @display("p=724.47,211.56;i=device/receiverdish");
        }
        frw[num_frw]: AdhocHost {
            @display("p=541.2,333.33;i=device/antennatower");
        }
}
