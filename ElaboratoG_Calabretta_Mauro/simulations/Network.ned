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
            @display("p=365.462,153.718");
        }
        networkConfigurator: <> like INetworkConfigurator {
            @display("p=26.468,23.414");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=26.468,86.53");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=26.468,153.718");
        }
        routingTableRecorder: RoutingTableRecorder {
            @display("p=26.468,215.816");
        }
        rx: AdhocHost {
            @display("p=655.592,152.7;i=device/receiverdish");
        }
        frw[num_frw]: AdhocHost {
            @display("p=509,176.114;i=device/antennatower");
        }
}
