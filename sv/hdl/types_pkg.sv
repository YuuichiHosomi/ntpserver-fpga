//-----------------------------------------------------------------------------
// Title         : Structure types
// Project       : Clock
//-----------------------------------------------------------------------------
// File          : types_pkg.sv
// Author        : Daniel Sun  <dcsun88osh@gmail.com>
// Created       : 27.10.2018
// Last modified : 27.10.2018
//-----------------------------------------------------------------------------
// Description :
// 
//-----------------------------------------------------------------------------
// Copyright (c) 2018 by  This model is the confidential and
// proprietary property of  and the possession or use of this
// file requires a written license from .
//------------------------------------------------------------------------------
// Modification history :
// 27.10.2018 : created
//-----------------------------------------------------------------------------

// `begin_keywords "1800-2012"
// `timescale 1ps/1ps

package types_pkg;

   typedef struct {
      logic [3:0] t_10h;
      logic [3:0] t_1h;

      logic [3:0] t_10m;
      logic [3:0] t_1m;
      
      logic [3:0] t_10s;
      logic [3:0] t_1s;

      logic [3:0] t_100ms;
      logic [3:0] t_10ms;
      logic [3:0] t_1ms;
   } time_t;
   
endpackage
