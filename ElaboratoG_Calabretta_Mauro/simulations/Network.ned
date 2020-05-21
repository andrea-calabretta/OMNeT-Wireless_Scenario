package elaboratog_calabretta_mauro.simulations;


import inet.networklayer.configurator.contract.INetworkConfigurator;
import inet.networklayer.ipv4.RoutingTableRecorder;
import inet.node.inet.AdhocHost;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.integrated.IntegratedMultiVisualizer;


network Network
{
    parameters:
        @display("bgb=799,505");
        int num_tx;
        int num_frw;

    submodules:
        tx[num_tx]: AdhocHost {
            @display("p=365.462,153.718");
        }
        networkConfigurator: <> like INetworkConfigurator {
            @display("p=127,71");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=127,176");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=127,303");
        }
        routingTableRecorder: RoutingTableRecorder {
            @display("p=127,422");
        }
        rx: AdhocHost {
            @display("p=655.592,152.7;i=device/receiverdish");
        }
        frw[num_frw]: AdhocHost {
            @display("p=509,176.114;i=device/antennatower");
        }
}
