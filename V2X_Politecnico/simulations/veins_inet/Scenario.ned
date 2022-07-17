//
// Copyright (C) 2006-2017 Christoph Sommer <sommer@ccs-labs.org>
//
// Documentation for these modules is at http://veins.car2x.org/
//
// SPDX-License-Identifier: GPL-2.0-or-later
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
//

package v2x_politecnico.simulations.veins_inet;

import inet.physicallayer.ieee80211.packetlevel.Ieee80211DimensionalRadioMedium;
import v2x_politecnico.veins_inet.VeinsInetCar;
import v2x_politecnico.veins_inet.VeinsInetManager;
import inet.visualizer.integrated.IntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;
import org.car2x.veins.visualizer.roads.RoadsCanvasVisualizer;
import org.car2x.veins.visualizer.roads.RoadsOsgVisualizer;

network Scenario
{
    @display("bgb=1200,500");
    submodules:
        radioMedium: Ieee80211DimensionalRadioMedium {
            @display("p=787,91");
        }
        manager: VeinsInetManager {
            @display("p=1064,229");
        }
        visualizer: IntegratedVisualizer {
            @display("p=787,229");
        }
        physicalEnvironment: PhysicalEnvironment {
            @display("p=1064,92");
        }
        roadsCanvasVisualizer: RoadsCanvasVisualizer {
            @display("p=787,404");
        }
        roadsOsgVisualizer: RoadsOsgVisualizer {
            @display("p=1064,404");
        }
        node[0]: VeinsInetCar {
            @display("p=917,92");
        }
}
