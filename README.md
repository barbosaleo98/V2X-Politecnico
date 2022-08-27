# V2X-Politecnico

## Simulation of a wireless communication in a V2X network using the framework Veins
**Final project of the class "EELT7002 - Data Communication Networks"**

### Objective:  
Simulate a V2V (vehicle-to-vechicle) communication scenario using the framework Veins

### Project characteristics:  
* Collision avoidance simulation
* Involves many connected vehicles in a line
* The first vehicle detects an accident in the road, brakes and alerts the other cars to do the same
* The scenario is modeled using the UFPR's campus "Centro Politécnico", with the route starting in one of the entrances and the braking will take place in front of the parking lot of the Electrical Engineering Department
* The framework Veins is utilized to manage the traffic and network simulations

<img src="https://user-images.githubusercontent.com/64433982/187046838-58510d73-4711-493f-90ce-1e8e0d78159b.png" alt="proposed route" width=400>

### Map modeling and traffic simulation

The base map for the simulations was obtained in https://www.openstreetmap.org as an ``.osm`` file:

<img src="https://user-images.githubusercontent.com/64433982/187038506-524a6b41-3250-491b-9de5-ea86c9e53efe.png" alt="OpenStreetMap" width=600>

And after that, the file was visualized and unecessary elements were removed using the program Java OpenStreetMap editor (JOSM):

<img src="https://user-images.githubusercontent.com/64433982/187038555-cb0b10db-cd69-4a0b-ad7b-92e075fa5207.png" alt="JOSM" width=600>

The ``politecnico.osm`` file was then converted to a ``politecnico.net.xml`` file using the SUMO tool called netconvert with the following command:

> netconvert --osm-files politecnico.osm --output-file politecnico.net.xml --geometry.remove --roundabouts.guess --ramps.guess --junctions.join --tls.guess-signals --tls.discard-simple --tls.join

That uses many optional parameters, such as ``--geometry.remove`` to simplify the model.

The generated net file is then visualized and further adjusted using the netedit tool from SUMO:

<img src="https://user-images.githubusercontent.com/64433982/187041320-7e5c1cde-3e8f-42fe-81ca-d1873f6db6cf.png" alt="Netedit map" width=600>

That is also used to identify the ID of each road that will be used in the traffic simulation. In this particular case, the selected roads had to also be configured to allow cars to circulate on them, because the original osm file only permitted pedestrians and bicycles on the campus, which is not true to the real-life traffic on the area. Using these road IDs, a ``politecnico.route.xml`` was created, where a flow of 5 identical cars was defined for the SUMO simulation.

Finally, a SUMO configuration ``politecnico.sumo.cfg`` was created, pointing to the ``politecnico.net.xml`` and ``politecnico.route.xml`` files and defining a total simulation of 100 seconds. Opening this file in the SUMO GUI, the simulation can ben run and visualized:

<img src="https://user-images.githubusercontent.com/64433982/187046731-60de5ac9-4795-40f2-84fb-bb4318ae9542.png" alt="SUMO simulation" width=600>
