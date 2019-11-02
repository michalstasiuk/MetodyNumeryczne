function dy = oil_temp_transfer(temperature_vector_prev,temperature_vector, arguments)
h_thermal_conductivity = arguments(1); 
A_cross_section =  arguments(2);       
mb_rod_mass = arguments(3);            
mw_oil_mass = arguments(4);            
cb_rod_heat_capacity = arguments(5);                      
cw_oil_heat_capacity = arguments(6); 
Tb = temperature_vector_prev(1); %oil
Tw = temperature_vector_prev(2); %rod

dy =  [(Tw-Tb)*( h_thermal_conductivity*A_cross_section)/(mb_rod_mass*cb_rod_heat_capacity)
       (Tb-Tw)*( h_thermal_conductivity*A_cross_section)/(mw_oil_mass*cw_oil_heat_capacity)
    ];
end 