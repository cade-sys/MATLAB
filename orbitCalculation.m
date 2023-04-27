% Cade Kirkpatrick
% Homework 7Q2
% EGR 101-01
% 03-28-2023

% Create table
Planet = [ "Distance", "Revolution", "Eccentricity", "Inclination"];
Mercury = [0.387;87.969;0.2056;7.005];
Venus = [0.723;224.701;0.0068;3.3947];
Earth = [1.000;365.256;0.0167;0.000];
Mars = [1.524;686.98;0.0934;1.851];

% Create table
planetData = table(Mercury, Venus, Earth, Mars);

theta=0:.01:2*pi;

% Calculating orbit and plotting planets
mars_r=1.524./(1-.0934*cos(theta));
polarplot(theta,mars_r)%plot Mars
hold on

earth_r = 1 ./ (1-.0167*cos(theta));
polarplot(theta,earth_r) % Plot Earth

venus_r = 0.723 ./ (1-0.0068*cos(theta));
polarplot(theta,venus_r) % Plot Venus

mercury_r = 0.3870 ./ (1-0.2056*cos(theta));
polarplot(theta,mercury_r) % Plot Mercury

% Make legends
legend('Mars','Earth','Venus','Mercury')%add legend
title('Inner Planets Orbits')%add title
