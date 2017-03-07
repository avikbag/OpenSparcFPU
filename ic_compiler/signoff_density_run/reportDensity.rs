#include "icv.rh" 
#define MACRO_CELLS_LIST {"*"} 

library(
    library_name = "< path to gds file>",
    cell = "<your cell name>",
    format = GDSII
);

top_cell = get_top_cell();

milkyway_options(drc_black_box_cells = {"*", "!top_cell"},merged_view_list={{name="FILL", outdated_views=DISCARD}});
layer1 = "layer1";
layer_name = "layerName";

my_density_func : function (void) returning void
{
   area1: double = den_polygon_area(layer1);
   areaW: double = den_window_area();
   ratio: double = 0;
   if ( areaW > 0) {
       ratio = area1/areaW;
   } else {
       ratio = -1;
   }
   den_save_window();
   den_window_statistics(
//      error_names = {layer_name,"area1","areaW","ratio"},
//      values = {0, area1, areaW, ratio}
      error_names = {layer_name},
      values = {ratio}
   );
}

M1              = assign       ( {{11}} );
M1_metal_blkg   = assign       ( {{11}}, milkyway = { views = {"FRAM"}, cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M1_macro_rg     = assign       ( {{ 190 }}, { route_guide_layers = {M1_ROUTE_GUIDE}, views = {"FRAM"},  cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M1_system_blkg  = assign       ( {{ 218 }}, milkyway = { views = {"FRAM"} , cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );

M2              = assign       ( {{12}} );
M2_metal_blkg   = assign       ( {{12}}, milkyway = { views = {"FRAM"}, cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M2_macro_rg     = assign       ( {{ 190 }}, { route_guide_layers = {M2_ROUTE_GUIDE}, views = {"FRAM"},  cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M2_system_blkg  = assign       ( {{ 219 }}, milkyway = { views = {"FRAM"} , cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );

M3              = assign       ( {{13}} );
M3_metal_blkg   = assign       ( {{13}}, milkyway = { views = {"FRAM"}, cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M3_macro_rg     = assign       ( {{ 190 }}, { route_guide_layers = {M3_ROUTE_GUIDE}, views = {"FRAM"},  cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M3_system_blkg  = assign       ( {{ 220 }}, milkyway = { views = {"FRAM"} , cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );

M4              = assign       ( {{14}} );
M4_metal_blkg   = assign       ( {{14}}, milkyway = { views = {"FRAM"}, cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M4_macro_rg     = assign       ( {{ 190 }}, { route_guide_layers = {M4_ROUTE_GUIDE}, views = {"FRAM"},  cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M4_system_blkg  = assign       ( {{ 216 }}, milkyway = { views = {"FRAM"} , cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );

M5              = assign       ( {{15}} );
M5_metal_blkg   = assign       ( {{15}}, milkyway = { views = {"FRAM"}, cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M5_macro_rg     = assign       ( {{ 190 }}, { route_guide_layers = {M5_ROUTE_GUIDE}, views = {"FRAM"},  cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M5_system_blkg  = assign       ( {{ 239 }}, milkyway = { views = {"FRAM"} , cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );

M6              = assign       ( {{16}} );
M6_metal_blkg   = assign       ( {{16}}, milkyway = { views = {"FRAM"}, cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M6_macro_rg     = assign       ( {{ 190 }}, { route_guide_layers = {M6_ROUTE_GUIDE}, views = {"FRAM"},  cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M6_system_blkg  = assign       ( {{ 240 }}, milkyway = { views = {"FRAM"} , cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );

M7              = assign       ( {{17}} );
M7_metal_blkg   = assign       ( {{17}}, milkyway = { views = {"FRAM"}, cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M7_macro_rg     = assign       ( {{ 190 }}, { route_guide_layers = {M7_ROUTE_GUIDE}, views = {"FRAM"},  cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M7_system_blkg  = assign       ( {{ 208 }}, milkyway = { views = {"FRAM"} , cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );

M8              = assign       ( {{18}} );
M8_metal_blkg   = assign       ( {{18}}, milkyway = { views = {"FRAM"}, cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M8_macro_rg     = assign       ( {{ 190 }}, { route_guide_layers = {M8_ROUTE_GUIDE}, views = {"FRAM"},  cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M8_system_blkg  = assign       ( {{ 210 }}, milkyway = { views = {"FRAM"} , cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );

M9              = assign       ( {{19}} );
M9_metal_blkg   = assign       ( {{19}}, milkyway = { views = {"FRAM"}, cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M9_macro_rg     = assign       ( {{ 190 }}, { route_guide_layers = {M9_ROUTE_GUIDE}, views = {"FRAM"},  cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );
M9_system_blkg  = assign       ( {{ 214 }}, milkyway = { views = {"FRAM"} , cell_types = {MACRO_CELL} }, select_cells = MACRO_CELLS_LIST );

chip_ext           = assign       ( {{ 255 }} );

sf = density_statistics_file ("density.txt");
sf_grad = density_statistics_file ("densityGrad.txt");
if(chip_ext == empty_layer()) {
    chip_ext = chip_extent();
}

M1_area_removed = or_list (layers = {M1_metal_blkg, M1_macro_rg, M1_system_blkg});
M1_chip_ext = chip_ext not M1_area_removed;
M1_denLayer = M1 and M1_chip_ext;
M2_area_removed = or_list (layers = {M2_metal_blkg, M2_macro_rg, M2_system_blkg});
M2_chip_ext = chip_ext not M2_area_removed;
M2_denLayer = M2 and M2_chip_ext;
M3_area_removed = or_list (layers = {M3_metal_blkg, M3_macro_rg, M3_system_blkg});
M3_chip_ext = chip_ext not M3_area_removed;
M3_denLayer = M3 and M3_chip_ext;
M4_area_removed = or_list (layers = {M4_metal_blkg, M4_macro_rg, M4_system_blkg});
M4_chip_ext = chip_ext not M4_area_removed;
M4_denLayer = M4 and M4_chip_ext;
M5_area_removed = or_list (layers = {M5_metal_blkg, M5_macro_rg, M5_system_blkg});
M5_chip_ext = chip_ext not M5_area_removed;
M5_denLayer = M5 and M5_chip_ext;
M6_area_removed = or_list (layers = {M6_metal_blkg, M6_macro_rg, M6_system_blkg});
M6_chip_ext = chip_ext not M6_area_removed;
M6_denLayer = M6 and M6_chip_ext;
M7_area_removed = or_list (layers = {M7_metal_blkg, M7_macro_rg, M7_system_blkg});
M7_chip_ext = chip_ext not M7_area_removed;
M7_denLayer = M7 and M7_chip_ext;
M8_area_removed = or_list (layers = {M8_metal_blkg, M8_macro_rg, M8_system_blkg});
M8_chip_ext = chip_ext not M8_area_removed;
M8_denLayer = M8 and M8_chip_ext;
M9_area_removed = or_list (layers = {M9_metal_blkg, M9_macro_rg, M9_system_blkg});
M9_chip_ext = chip_ext not M9_area_removed;
M9_denLayer = M9 and M9_chip_ext;
layer_name = "M1";
M1_ERROR @= { @"DEN_ERR_M1";
         density (window_layer = chip_ext, delta_window = {100,100}, window_function = my_density_func, layer_hash = { layer1 => M1_denLayer }, statistics_files = {sf}, statistics_file_modes = ({OVERWRITE}), name = layer_name); 
 }

layer_name = "M2";
M2_ERROR @= { @"DEN_ERR_M2";
         density (window_layer = chip_ext, delta_window = {100,100}, window_function = my_density_func, layer_hash = { layer1 => M2_denLayer }, statistics_files = {sf}, statistics_file_modes = ({APPEND}), name = layer_name); 
 }

layer_name = "M3";
M3_ERROR @= { @"DEN_ERR_M3";
         density (window_layer = chip_ext, delta_window = {100,100}, window_function = my_density_func, layer_hash = { layer1 => M3_denLayer }, statistics_files = {sf}, statistics_file_modes = ({APPEND}), name = layer_name); 
 }

layer_name = "M4";
M4_ERROR @= { @"DEN_ERR_M4";
         density (window_layer = chip_ext, delta_window = {100,100}, window_function = my_density_func, layer_hash = { layer1 => M4_denLayer }, statistics_files = {sf}, statistics_file_modes = ({APPEND}), name = layer_name); 
 }

layer_name = "M5";
M5_ERROR @= { @"DEN_ERR_M5";
         density (window_layer = chip_ext, delta_window = {100,100}, window_function = my_density_func, layer_hash = { layer1 => M5_denLayer }, statistics_files = {sf}, statistics_file_modes = ({APPEND}), name = layer_name); 
 }

layer_name = "M6";
M6_ERROR @= { @"DEN_ERR_M6";
         density (window_layer = chip_ext, delta_window = {100,100}, window_function = my_density_func, layer_hash = { layer1 => M6_denLayer }, statistics_files = {sf}, statistics_file_modes = ({APPEND}), name = layer_name); 
 }

layer_name = "M7";
M7_ERROR @= { @"DEN_ERR_M7";
         density (window_layer = chip_ext, delta_window = {100,100}, window_function = my_density_func, layer_hash = { layer1 => M7_denLayer }, statistics_files = {sf}, statistics_file_modes = ({APPEND}), name = layer_name); 
 }

layer_name = "M8";
M8_ERROR @= { @"DEN_ERR_M8";
         density (window_layer = chip_ext, delta_window = {100,100}, window_function = my_density_func, layer_hash = { layer1 => M8_denLayer }, statistics_files = {sf}, statistics_file_modes = ({APPEND}), name = layer_name); 
 }

layer_name = "M9";
M9_ERROR @= { @"DEN_ERR_M9";
         density (window_layer = chip_ext, delta_window = {100,100}, window_function = my_density_func, layer_hash = { layer1 => M9_denLayer }, statistics_files = {sf}, statistics_file_modes = ({APPEND}), name = layer_name); 
 }

