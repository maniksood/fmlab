-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2015 at 07:06 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fmlab`
--
CREATE DATABASE IF NOT EXISTS `fmlab` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fmlab`;

-- --------------------------------------------------------

--
-- Table structure for table `aim`
--

CREATE TABLE IF NOT EXISTS `aim` (
  `name` varchar(255) NOT NULL,
  `aim` text NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aim`
--

INSERT INTO `aim` (`name`, `aim`) VALUES
('bernoulli', '\r\n<p>Verification of Bernoulli''s Theorem</p>'),
('cc-cv-cd', '\r\n<p>Determination of Cc, Cv and Cd of an Orifice</p>'),
('friction-loss', '\r\n<p>Determination of Frictional Losses in Pipes</p>'),
('metacentric', '\r\n<p>Determination of Metacentric Height</p>'),
('minor-loss', '\r\n<p>Determination of Minor Losses in Pipe</p>'),
('momentum', '\r\n<p>Verification of Momentum Theorem</p>'),
('orifice', '\r\n<p>Calibration of Orificemeter</p>'),
('reynold', '\r\n<p>Reynolds Dye Experiment for Flow Characterization</p>'),
('venturimeter', '<p>To determine the co-efficient of discharge.</p>'),
('vnotch', '<p>To Calculate the cofficient of discharge using v-notch</p>');

-- --------------------------------------------------------

--
-- Table structure for table `apparatus`
--

CREATE TABLE IF NOT EXISTS `apparatus` (
  `name` varchar(255) NOT NULL,
  `apparatus` text NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apparatus`
--

INSERT INTO `apparatus` (`name`, `apparatus`) VALUES
('bernoulli', '\r\n<ul>\r\n	<li><p>Supply water tank</p></li>\r\n	<li><p>Discharge measuring tank</p></li>\r\n	<li><p>Variable area duct with minimum area at the middle with connections to piezometric tubes at different sections</p></li>\r\n	<li><p>Stop watch</p></li>\r\n	<li><p>Meter scale</p></li>\r\n</ul>'),
('cc-cv-cd', '<ul>\r\n	<li><p>The set-up consists of a constant head supply tank with a circular orifice on in its side wall. A measuring tank is provided to collect the water for the measurement of discharge.</p></li>\r\n	<li><p>A micrometer contraction gauge can be held across the water jet at the vena contracta for the measurement of diameter of the jet at the vena contracta in two perpendicular directions.</p></li>\r\n	<li><p>For the measurement of the coordinates of the jet, a horizontal scale to which a vertical scale is fitted is attached to the tank. A hook gauge is mounted on the vertical scale. The hook gauge can be moved vertically as well as horizontally so that its tip touches the lower surface of the jet. The distances x and y can be read on the horizontal and vertical scales respectively.</p></li>\r\n</ul>'),
('friction-loss', '<ul>\r\n	<li><p>Pipes of different diameter, 1.7cm, 2.7cm</p></li>\r\n	<li><p>Two pet-cocks on each side with the help of which flow is regulated</p></li>\r\n	<li><p>A valve fitted to each pipe with the help of which flow is regulated</p></li>\r\n	<li><p>An U tube manometer connected to the pressure tapping of each pipe</p></li>\r\n	<li><p>A discharge measuring tank fitted with a pizometer tube and a graduated scale to measure the depth of water collected.</p></li>\r\n</ul>'),
('metacentric', '<ul>\r\n	<li><p>Small steel tank (50 cm x 50 cm x 50 cm)</p></li>\r\n	<li><p>Metal vessel with hangers</p></li>\r\n	<li><p>Adjustable weights</p></li>\r\n	<li><p>Plumb bob</p></li>\r\n	<li><p>Scale</p></li>\r\n	<li><p>Steel rule</p></li>\r\n</ul>'),
('minor-loss', '<p>The set-up consists of a small diameter pipe which suddenly changes to a large diameter. After a certain length, the large diameter suddenly reduces to a small diameter. The small diameter pipe has a 90o bend. Suitable pressure tapping points are provided to measure the loss of head with an inverted U- tube manometer. The loss of head can be determined by connecting the manometer across the sections where the changes occur in the flow.</p>\r\n	\r\n<p>The pipe is connected to a constant-head supply tank. The water is collected in a measuring tank for the determination of the discharge.</p>\r\n'),
('momentum', ' <ul>\r\n 	<li><p>The set-up consists of a transparent cylinder, with an axial vertical rod which can move up and down. A vane is fixed at the lower end of the rod. A nozzle, through which a water jet emerges and strikes the vane, is located just below the vane so that the jet strikes \r\nat the center of the vane. The water after striking the vane falls at the bottom of the cylinder and is collected in a measuring tank.</p></li>\r\n 	<li><p>A spring is fixed at the top of the vertical rod on which a loading pan is placed. The force exerted by the jet on the vane can be measured by the weights placed on the loading pan to counteract the reaction of the jet. Vanes of different shapes can be used for the measurement of the force. After the impact, the rod tends to move upward but the weights bring it downward.</p></li>\r\n 	<li><p>A vertical scale is fixed to the top of the cylinder for setting back the rod to its original position. The water is supplied to the nozzle from a constant-head tank</p></li>\r\n </ul>'),
('orifice', '\r\n<h3>TO BE UPDATED</h3>'),
('reynold', '<ul>\r\n	<li><p>A perplex tube of diameter 2.5 cm fitted at the bottom of a reservoir tank</p></li>\r\n	<li><p>Die injector</p></li>\r\n	<li><p>Measuring tank</p></li>\r\n	<li><p>Piezometer</p></li>\r\n	<li><p>Stop watch</p></li>\r\n	<li><p>Dye pot</p></li>\r\n</ul>'),
('venturimeter', '\r\n<h3>TO BE UPDATED</h3>'),
('vnotch', '<ul>\r\n				<li><p>Tank filled with a notch</p></li>\r\n				<li><p>Stopwatch</li></p>\r\n				<li><p>Discharge measuring tank</p></li>\r\n				<li><p>Perforated plates</p></li>\r\n				<li><p>Scale</p></li>\r\n				<br><br><br>\r\n			</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `procedure`
--

CREATE TABLE IF NOT EXISTS `procedure` (
  `name` varchar(255) NOT NULL,
  `procedure` text NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `procedure`
--

INSERT INTO `procedure` (`name`, `procedure`) VALUES
('bernoulli', '<p>1.	Measure the distances from an end to locate the position of piezometers and calculate the area of cross section of duct at all piezometric points, also measure the area of discharge measuring tank.</p>\r\n<p>2.	Open the supply valve and adjust the outlet so that the water level in the inlet tank remains stable </p>\r\n<p>3.	Remove air bubbles from the piezometric tubes with the help of rubber pipe.</p>\r\n<p>4.	Measure the height of water level in different piezometers above an arbitrarily selected horizontal plane.</p>\r\n<p>5.	Measure the discharge passing through the duct by measuring the volume of water collected in the tank for a selected period ''t'' seconds.</p>\r\n<p>6.	Repeat step 3, 4, 5 for one more discharge value.</p>'),
('cc-cv-cd', '<p>1.	Measure the diameter of the orifice and fit it to the side opening of the constant hand supply tank and close it with a rubber plug.</p>\r\n<p>2.	Open the inlet valve of the supply tank to fill water to the required level. Note the head H.</p>\r\n<p>3.	Remove the plug. The water flows out of the orifice and the water level in the tank drops. Adjust the inlet valve till the water level becomes constant.</p>\r\n<p>4.	Hold the micrometer contraction gauge across the venacontracta. Adjust the screws on its ring so that the points of all the four screws just touch the periphery of the jet.</p> \r\n<p>5.	Take the micrometer contraction gauge away from the jet and measure the diameter in the two perpendicular directions.</p>\r\n<p>6.	Bring the hook gauge to the venacontracta. Note the horizontal scale and vertical scale readings (x<sub>o</sub> &amp; y<sub>o</sub>) when the point of the hook gauge just touches the lower surface of the jet.</p>\r\n<p>7.	Slide the hook gauge to a point some distance away from the venacontracta and measure the x'' and y'' coordinates.</p>\r\n<p>8.	Determine the actual discharge by collecting the volume of water (V) for a period of time (t).</p>\r\n<p>9.	Repeat steps 2 to 8 for 5 to 7 different heads H.</p>'),
('friction-loss', '<p>1.	Record the diameter ''d'' of the pipe and the length L between the sections attached to the limbs of U-tube manometer</p>\r\n<p>2.	Open the supply valve to allow water to flow in one pipe only.</p>\r\n<p>3.	Record the initial water level in the pizometer fitted to the discharge measuring tank and start the stop watch and find the depth of water collected for a particular time by recording the final reading of the pizometer</p>\r\n<p>4.	Knowing the area of the measuring tank, flow rate through the pipe can be obtained</p>\r\n<p>5.	Record the readings of the two limbs of the manometer, difference of which gives the head loss hf </p>\r\n<p>6.	Repeat the procedure at least ten times at different fluid flow rate</p>\r\n<p>7.	Repeat the above procedure for other pipes</p>'),
('metacentric', '<p>1.	Determine the weight of vessel (W), including the weight of the hangers and weights. For determining the W, water level in the tank before floating the vessel is noted (h<sub>1</sub>) and water level after floating the vessel is noted (h<sub>2</sub>).</p>\r\n<p>2.	Shift the moveable weights by unequal distances x<sub>1</sub> and x<sub>2</sub> from the center of the crossbar.</p>\r\n<p>3.	Note down x<sub>1</sub>, x<sub>2</sub> and angle of heel &theta;.</p>\r\n<p>4.	Repeat steps from 2 to 3 for different positions of moveable weights.</p>'),
('minor-loss', '<p>1.	Measure the diameters of pipes. Also measure the dimensions of the collecting tank.</p>\r\n<p>2.	Open the inlet valve.</p>\r\n<p>3.	Connect the manometer across the sections for which the loss of head due to sudden expansion is to be measured.</p>\r\n<p>4.	Gradually adjust the exit valve. When the flow becomes steady, measure the manometeric deflection (h)</p>\r\n<p>5.	Take the initial reading of the measuring tank and start the stop watch. Note the rise in water level for a suitable time period.</p>\r\n<p>6.	Repeat steps 4 and 5 for different discharges.</p>\r\n<p>7.	Repeat steps 3 to 6 for the loss of head due to sudden contraction.</p>\r\n<p>8.	Repeat steps 3 to 6 for the loss of head due to bend. </p>'),
('momentum', '<p>1.	Measure the angle &theta; of the vane. Also measure the exit diameter of the nozzle.</p>\r\n<p>2.	Fix the vane at the bottom end of the vertical rod so that it is exactly above the nozzle and is symmetry.</p>\r\n<p>3.	Regulate the inlet valve of the supply pipe so that the jet issuing from the nozzle strikes the vane axially.</p>\r\n<p>4.	Place the required weights on the pan to counteract the upward force due to impact of jet.</p>\r\n<p>5.	Take the initial reading of the water level in the measuring tank, and start the stop watch. Note the rise in the water level after a suitable time period for the measurement of discharge.</p>\r\n<p>6.	Repeat steps 3 to 5 for different flow rates.</p>\r\n<p>7.	Close the inlet valve. Repeat steps 1 to 6 for another vane.</p>'),
('orifice', '<p>1.	Record the inlet pipe diameter (d<sub>1</sub>) orifice diameter (d<sub>o</sub>) and the densities of manometer fluid  and that of flowing fluid.</p>\r\n\r\n<p>2.	Open the regulation valve and under steady state condition note the readings h<sub>1</sub> and h<sub>2</sub> in the two limbs of the mercury differential manometer.</p>\r\n\r\n<p>3.	Note the initial level of water in measuring tank. Collect the water in the measuring tank for certain time and note the final level of water in measuring tank   Calculate the actual discharge.</p>\r\n\r\n<p>4.	Very the flow rate through the system with the regulation valve and take the different readings.</p> '),
('reynold', '<p>1.	Fill the tank with water.</p>\r\n<p>2.	Open the control valve so that water can flow through the tube.</p>\r\n<p>3.	Inject the dye into the fluid stream.</p>\r\n<p>4.	Collect fluid for some particular time interval.</p>\r\n<p>5.	See the dye filament characteristics.</p>\r\n<p>6.	Change the flow rate of fluid and repeat the same procedure.</p>'),
('venturimeter', '<p>1.	Record the inlet pipe diameter (D<sub>1</sub>) throat diameter (D<sub>t</sub>) and the  densities of manometer fluid  and hat of flowing fluid </p>\r\n<p>2.	Open the regulation valve and under steady state condition note the readings h<sub>1</sub> and h<sub>2</sub> in the two limbs of the mercury differential manometer.</p>\r\n<p>3.	Note the initial level of water in measuring tank. Collect the water in the measuring tank for certain time and note the final level of water in measuring tank. Calculate the actual discharge.</p>\r\n<p>4.	Vary the flow rate through the system with the regulation valve and take the different readings. </p>'),
('vnotch', '<p>1. Allow the water into the tank till it just starts passing over the notch.</p>\r\n<p>2. Stop the supply of water and record the level of water (H<sub>1</sub>) by hook gauge when no water is passing over the notch.</p>\r\n<p>3. Increase the supply of water till the head over the still of the notch becomes constant. Record the level H<sub>2</sub> of free liquid surface. Difference of H<sub>2</sub> &amp; H<sub>1</sub> gives the value of H.</p>\r\n<p>4. Mesaure the flow rate (Q) with the help of measuring tank and a stop watch.</p>\r\n<p>5. Vary the flow rate and record three more readings.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `theory`
--

CREATE TABLE IF NOT EXISTS `theory` (
  `name` varchar(255) NOT NULL,
  `theory` text NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theory`
--

INSERT INTO `theory` (`name`, `theory`) VALUES
('bernoulli', '<p>Bernoulli''s theorem states that the total energy of an ideal fluid for steady irrotational flow remains constant along a stream line. The total energy in the flowing fluid is the sum of the flow energy, the potential energy and the kinetic energy. In fluid mechanics energy of unit weight of fluid is expressed as head. The pressure head, datum head, and velocity head are represented as p/?, z, and v2/2g, respectively. Therefore the Bernoulli''s theorem can be represented by the following equation-</p>\r\n<br>\r\n<h2 border="1">H = p/&rho;g + V<sup>2</sup>/2g + Z = constant</h2>\r\n<br>\r\n<p>H        = total head</p>\r\n<p>p/&rho;g      = pressure per unit weight or pressure head</p>\r\n<p>z         = potential energy per unit weight or datum head</p>\r\n<p>V<sup>2</sup>/2g = kinetic energy per unit weight or velocity head</p>\r\n<p> &rho;        =  specific gravity of fluid</p>\r\n<br>\r\n<p>p is the pressure at a point in fluid , v is the velocity at that point and z is the height of that  point above any arbitrarily selected datum.</p>'),
('cc-cv-cd', '<p>The coefficient of contraction Cc is equal to the ratio , where   is the area of cross section at the vena contracta. The readings of the micrometer gauge give the mean diameter  of the jet at the vena contracta at two sections perpendicular to each other. Thus, </p>\r\n\r\n<center><h2>C<sub>c</sub> = d<sup>2</sup>/d<sub>c</sub><sup>2</sup></h2><p>where d is the diameter of the orifice.</p></center>\r\n\r\n<br>\r\n<p>By applying the equations of motion to the trajectory of the jet, it can be shown that the actual velocity of the jet is given by,</p>\r\n\r\n<center><h2>V = &radic;(gx<sup>2</sup>/2y) </h2></center>\r\n\r\n                                            \r\n      \r\n\r\n             \r\n\r\n<p>therefore,</p>                 \r\n<center><h2>C<sub>c</sub> = V/&radic;(2gH) = &radic;(x<sup>2</sup>/4yH)</h2></center>\r\n\r\n\r\n<p>where x and y are the coordinates of the jet, measured with respect to the center of the vena contracta.</p>\r\n\r\n<p>The coefficient of discharge (C<sub>d</sub>) is given by ,</p> \r\n<center><h2>C<sub>d</sub> = Q/(a&radic;(2gH))</h2><p>where   is the volume of water collected in time t</p></center>\r\n\r\n            \r\n\r\n<p>Since it is difficult to determine the diameter of the jet at the vena contracta accurately, it can also be determined indirectly from the relation </p>\r\n\r\n \r\n\r\n\r\n<p>The value of C<sub>d</sub> depends upon the nominal Reynolds number N<sub>R</sub> given by</p>\r\n<center><h2>N<sub>R</sub> = Vd/v = (d&radic;(2gH))/v</h2></center>'),
('friction-loss', '<p>Transportation of fluids through pipes is frequently dealt with by engineers. Distribution of water and gas for domestic consumption through pipes is an example. Experimental observations by Froude on long, straight and uniform diameter pipes on the flow of water indicated that head losses due to friction hf between two sections of pipes varied in direct portion with the velocity head V<sup>2</sup>/2g, the distance between the two sections L, and inversely with the pipe diameter, d. By introducing a co-efficient of proportionality ''f'', called the friction factor. Darcy and Weisbach proposed the following equation for head loss due to friction in a pipe.</p>\r\n\r\n<center><h2>\r\n	h<sub>f</sub> = f(L/d)(V<sup>2</sup>/2g) or, f = (2gdh<sub>f</sub>)/LV<sup>2</sup>\r\n</h2></center>'),
('metacentric', '<p>When a body is immersed in a fluid two forces act on it; the gravitational force (weight) and the buoyant force. The buoyant force is equal to the weight of displaced fluid, and it acts through the center of gravity of the displaced fluid.</p>\r\n\r\n<p>For a body to be in equilibrium on the liquid surface as shown in Fig.1, the weight (W) and the buoyant force must lie in the same vertical line. On rotating the body as shown in Fig.2 through an angle (&theta;), the center of gravity G is usually unchanged in this position but the center of buoyancy B<sub>0</sub> shifts towards the new position. Therefore W and B will make couple that will try to balance the disturbance.</p>\r\n\r\n<p>The line of action of FB in this new position cuts the axis of symmetry at M, which is called metacentre and the distance GM is called the metacentric Height.</p>\r\n\r\n\r\n<p>G    = Center of Gravity</p>\r\n<p>B<sub>0</sub>   = Centre of Buoyancy</p>\r\n<p>B    = New center of Buoyancy</p>\r\n<p>GM = Metacentric height</p>\r\n<p>m    = Weight of hangers</p>\r\n<p>w    = Weight applied</p>\r\n<p>W   = Weight of vessel\r\n          (Including m, w)</p> \r\n<p>x     = Distance from the center</p>\r\n<p>&theta;	  = Angle of  tilt</p> \r\n\r\n\r\n<p>Theoretically, GM is determined by equation</p>\r\n<center><h2>GM = I<sub>00</sub>/V - BG</h2></center> \r\n<p>I<sub>00</sub> = Area moment of inertia of the water line area about the axis of rotation.</p>\r\n<p>V = volume of the submerged portion of vessel.</p>\r\n<p>BG = distance between center of gravity and center of buoyancy</p><br>\r\n\r\n<p>Experimentally, GM is determined by equation</p>\r\n<center><h2>GM = {(w<sub>1</sub> + m) x<sub>1</sub> - (w<sub>2</sub> + m)x<sub>2</sub>}/W tan &theta;</h2></center>'),
('minor-loss', '<p>The form losses are usually expressed as</p>	<br>\r\n<center>\r\n	<h2>H<sub>L</sub> = K(V<sup>2</sup>/2g)</h2>\r\n</center>\r\n \r\n<p>Where,</p>\r\n         \r\n		<p>V is the mean velocity of flow,</p>\r\n        <p>K is the form loss factor, which depends upon the type of obstruction or change, the type of the loss off head due to sudden expansion is usually determined by the Borda-Carnot equation</p><br>\r\n		\r\n        <center><h2><h2>H<sub>L</sub> = (V<sub>1</sub> - V<sub>2</sub>)/2g </h2><br></center>\r\n\r\n<p>Where,</p>\r\n <p>V1 is the velocity in the smaller pipe and </p>\r\n <p>V2  is the velocity in the larger pipe.</p><br>\r\n\r\n<p>This can be expressed as</p> <br>\r\n<center>\r\n	<h2>H<sub>L</sub> = K<sub>e</sub>(V<sub>1</sub><sup>2</sup>/2g)</h2>\r\n</center>\r\n\r\n \r\n<p>Where,</p>\r\n<p>K<sub>e</sub> is the coefficient for sudden expansion. The value of K<sub>e</sub> depends upon d<sub>1</sub>/d<sub>2</sub> ratio.</p>\r\n\r\n<p>For gradual expansion (diffusers), the value of K<sub>e</sub> depends upon the d<sub>1</sub>/d<sub>2</sub> ratio and the angle of divergence.</p>\r\n\r\n<p>The loss of head due to sudden contraction is usually expressed as</p><br>\r\n\r\n<center>\r\n	<h2>H<sub>L</sub> = K<sub>c</sub>(V<sub>1</sub><sup>2</sup>/2g)</h2>\r\n</center>\r\n \r\n\r\n<p>Where   V<sub>1</sub> is the velocity in the smaller pipe.</p>\r\n\r\n            <p>The value of Kc is usually about 0.3 to 0.5</p>\r\n             <p>For gradual contractions, the loss of head is considerably small.</p><br>\r\n             \r\n<p>The loss of head at a bend can be expressed as</p>\r\n<center>\r\n	<h2>H<sub>L</sub> = K<sub>b</sub>(V<sup>2</sup>/2g)</h2>\r\n</center>\r\n \r\n\r\n<p>The value of Kb depends upon the angle of bend, the ratio of the radius of curvature of the bend to the diameter of the pipe (i.e. r/D ratio), and the roughness of the pipe.</p>\r\n \r\n               <p>For a 90&deg; bend, the value of Kb usually varies between 0.60 and 0.90.</p>'),
('momentum', '<p>When a vertical jet with a velocity V strikes a symmetrical horizontal vane, the vertical components of the force on the vane is given by,</p>\r\n\r\n<center><h2>F<sub>v</sub> = &rho;Q(V-Vcos&theta;)</h2></center>\r\n        \r\n\r\n <p>or,</p>  \r\n\r\n <center><h2>F<sub>v</sub> = &rho;(AV)(1-cos&theta;)V</h2></center>                 \r\n\r\n <p>or,</p> \r\n\r\n <center><h2>F<sub>v</sub> = &rho;(AV<sup>2</sup>)(1-cos&theta;)</h2></center>                  \r\n\r\n<p>Where,</p>                   \r\n	<p>&rho; is the mass density = 1000 kg/m3</p>\r\n	<p>A is the cross sectional of the jet</p>\r\n    <p>V is the velocity of the jet</p>\r\n    <p>&theta; is the angle by which the jet is deflected by the vane.</p>\r\n	<p>(&theta; is usually greater than 90&deg;)</p>\r\n\r\n<p>The net horizontal component of the force is zero in this case because of vertical symmetry of the vane.</p>\r\n\r\n<p>Because of losses, the actual force acting on the vane is less than the theoretical force. The vane coefficient (K) is equal to the ratio of the actual force to the theoretical force.</p>'),
('orifice', '<p>Orifice-meter: It is a device for measuring rate of flow in a pipeline.</p>\r\n\r\n <center>\r\n	<h2>Q = C<sub>d</sub>(A<sub>1</sub>A<sub>2</sub>/&radic;(A<sub>1</sub><sup>2</sup>-A<sub>2</sub><sup>2</sup>))(&radic;2gh)</h2>\r\n</center>\r\n\r\n<p>A1	= Area of Pipe</p>\r\n<p>A2 	= Area of Orifice</p>\r\n<p>H	= Difference in Manometer height cm of water.</p>\r\n<p>Q	= Theoretical discharge</p>\r\n<p>C<sub>d</sub> 	= Q<sub>act</sub>/Q<sub>the</sub></p>'),
('reynold', '<p>The Reynolds number Re is defined as follows</p><br>\r\n<center><h2>R<sub>e</sub> = Inertial Force/Viscous Force = dv&rho;/&mu;</h2></center>\r\n			\r\n \r\n\r\n<p>If</p> 	\r\n\r\n<p>Re < 2000		The flow is laminar.</p>\r\n<p>2000 < Re< 4000	The flow is in transition state</p>\r\n<p>Re > 4000		The flow is turbulent.</p>\r\n\r\n\r\n<p>The velocity at which the flow changes from laminar to transition is called lower critical velocity and the velocity at which the flow changes from transition to turbulent is called upper critical velocity.</p>'),
('venturimeter', '<p>Venturimeter: It is a device for measuring rate of flow in a pipeline. Its theoretical analysis is based on (1) Bernoilli''s equation and (2) Continuity equation</p>\r\n<p>A venturimeter is commonly used to measure discharge in closed conduits having pipe flow. It consists of a converging cone, a throat section and a diverging cone. An expression for the discharge is derived by applying the Bernoulli equation to the inlet and the throat and using the continuity equation, discharge is given by:\r\n</p>\r\n\r\n<center>\r\n	<h2>Q = C<sub>d</sub>(A<sub>1</sub>A<sub>2</sub>/&radic;(A<sub>1</sub><sup>2</sup>-A<sub>2</sub><sup>2</sup>))(&radic;2gh)</h2>\r\n</center>'),
('vnotch', '<p>A weir is an obstruction placed across a free surface of a stream flow such that the flow takes place over it. Notches are opening cut in a metallic plate and installed in flumes or small channels. Installation of a notch is exclusively for the purpose of measuring the discharge in the steam.</p>\r\n\r\n<p>A sharp crested weir or notch for the measurement of discharge generally have a regular geometrical shape i.e. triangular, rectangular. The free surface flow taking place over it acquires steady state conditions such that the discharge is uniquely related to the head H over the crest of the notch, measured at a distance about 3 to 4 times H from the crest towards upstream.</p>\r\n\r\n<p>A weir is an obstruction placed across a free surface of a stream flow such that the flow takes place over it. Notches are opening cut in a metallic plate and installed in flumes over small channels. The free surface flow taking place over it aquires steady state condition such that the discharge is unique related to the head H over crest of the notch measured at a distance about 3 to 4 discharge over a V-notch.</p>\r\n			<center>\r\n			<h3>Q<sub>th</sub> = 8/15 x &radic;(2g) x tan&theta; x H<sup>5/2</sup></h3>\r\n			<br>\r\n			<p>&theta; = Angle of V-Notch (in degrees)</p>\r\n			<p>H = Head over the V-Notch (in cm)</p>\r\n			<p>C<sub>d</sub> = Cofficient of discharge</p>\r\n			<p>C<sub>d</sub> = Q<sub>th</sub> / Q<sub>act</sub></p>\r\n			</center>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'test1', 'test@test.com', 'test');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
