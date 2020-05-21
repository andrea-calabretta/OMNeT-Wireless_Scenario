package g_calabretta_mauro.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.networklayer.ipv4.RoutingTableRecorder;
import inet.node.inet.AdhocHost;
import inet.physicallayer.common.packetlevel.RadioMedium;
import inet.physicallayer.ieee802154.packetlevel.Ieee802154NarrowbandDimensionalReceiver;
import inet.visualizer.networklayer.RoutingTableOsgVisualizer;


network G_Net
{
    parameters:
        @display("bgb=700,371");

    submodules:
        Receiver: AdhocHost {
            @display("p=335,110");
        }
        Sender: AdhocHost {
            @display("p=365,216");
        }
        Forwarder: AdhocHost {
            @display("p=493,138");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=97,50");
        }
        radioMedium: RadioMedium {
            @display("p=75,145");
        }
}
