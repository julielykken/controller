pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E124 : Short_Integer; pragma Import (Ada, E124, "ada__text_io_E");
   E105 : Short_Integer; pragma Import (Ada, E105, "ada__tags_E");
   E096 : Short_Integer; pragma Import (Ada, E096, "ada__strings__text_buffers_E");
   E094 : Short_Integer; pragma Import (Ada, E094, "system__bb__timing_events_E");
   E022 : Short_Integer; pragma Import (Ada, E022, "ada__exceptions_E");
   E047 : Short_Integer; pragma Import (Ada, E047, "system__soft_links_E");
   E045 : Short_Integer; pragma Import (Ada, E045, "system__exception_table_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "ada__streams_E");
   E152 : Short_Integer; pragma Import (Ada, E152, "system__finalization_root_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "ada__finalization_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "system__storage_pools_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "system__finalization_masters_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__real_time_E");
   E229 : Short_Integer; pragma Import (Ada, E229, "ada__real_time__timing_events_E");
   E156 : Short_Integer; pragma Import (Ada, E156, "system__pool_global_E");
   E213 : Short_Integer; pragma Import (Ada, E213, "system__tasking__protected_objects_E");
   E220 : Short_Integer; pragma Import (Ada, E220, "system__tasking__restricted__stages_E");
   E231 : Short_Integer; pragma Import (Ada, E231, "generic_timers_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "hal__gpio_E");
   E179 : Short_Integer; pragma Import (Ada, E179, "hal__i2c_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "hal__spi_E");
   E183 : Short_Integer; pragma Import (Ada, E183, "hal__uart_E");
   E211 : Short_Integer; pragma Import (Ada, E211, "memory_barriers_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "cortex_m__nvic_E");
   E204 : Short_Integer; pragma Import (Ada, E204, "nrf__events_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "nrf__gpio_E");
   E206 : Short_Integer; pragma Import (Ada, E206, "nrf__interrupts_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "nrf__rtc_E");
   E170 : Short_Integer; pragma Import (Ada, E170, "nrf__spi_master_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "nrf__tasks_E");
   E190 : Short_Integer; pragma Import (Ada, E190, "nrf__clock_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "nrf__timers_E");
   E177 : Short_Integer; pragma Import (Ada, E177, "nrf__twi_E");
   E181 : Short_Integer; pragma Import (Ada, E181, "nrf__uart_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "nrf__device_E");
   E225 : Short_Integer; pragma Import (Ada, E225, "microbit__displayrt_E");
   E233 : Short_Integer; pragma Import (Ada, E233, "microbit__displayrt__symbols_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "microbit__timewithrtc1_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "microbit__buttons_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (Ada, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := 0;
      WC_Encoding := 'b';
      Locking_Policy := 'C';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := 'F';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 1;
      Default_Stack_Size := -1;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Ada.Text_Io'Elab_Body;
      E124 := E124 + 1;
      Ada.Strings.Text_Buffers'Elab_Spec;
      E096 := E096 + 1;
      System.Bb.Timing_Events'Elab_Spec;
      E094 := E094 + 1;
      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      Ada.Tags'Elab_Body;
      E105 := E105 + 1;
      System.Exception_Table'Elab_Body;
      E045 := E045 + 1;
      E047 := E047 + 1;
      E022 := E022 + 1;
      Ada.Streams'Elab_Spec;
      E145 := E145 + 1;
      System.Finalization_Root'Elab_Spec;
      E152 := E152 + 1;
      Ada.Finalization'Elab_Spec;
      E150 := E150 + 1;
      System.Storage_Pools'Elab_Spec;
      E154 := E154 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E149 := E149 + 1;
      Ada.Real_Time'Elab_Body;
      E006 := E006 + 1;
      Ada.Real_Time.Timing_Events'Elab_Spec;
      E229 := E229 + 1;
      System.Pool_Global'Elab_Spec;
      E156 := E156 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E213 := E213 + 1;
      System.Tasking.Restricted.Stages'Elab_Body;
      E220 := E220 + 1;
      E231 := E231 + 1;
      HAL.GPIO'ELAB_SPEC;
      E147 := E147 + 1;
      HAL.I2C'ELAB_SPEC;
      E179 := E179 + 1;
      HAL.SPI'ELAB_SPEC;
      E172 := E172 + 1;
      HAL.UART'ELAB_SPEC;
      E183 := E183 + 1;
      E211 := E211 + 1;
      E209 := E209 + 1;
      E204 := E204 + 1;
      Nrf.Gpio'Elab_Spec;
      Nrf.Gpio'Elab_Body;
      E138 := E138 + 1;
      E206 := E206 + 1;
      E167 := E167 + 1;
      Nrf.Spi_Master'Elab_Spec;
      Nrf.Spi_Master'Elab_Body;
      E170 := E170 + 1;
      E192 := E192 + 1;
      E190 := E190 + 1;
      Nrf.Timers'Elab_Spec;
      Nrf.Timers'Elab_Body;
      E174 := E174 + 1;
      Nrf.Twi'Elab_Spec;
      Nrf.Twi'Elab_Body;
      E177 := E177 + 1;
      Nrf.Uart'Elab_Spec;
      Nrf.Uart'Elab_Body;
      E181 := E181 + 1;
      Nrf.Device'Elab_Spec;
      Nrf.Device'Elab_Body;
      E128 := E128 + 1;
      Microbit.Displayrt'Elab_Body;
      E225 := E225 + 1;
      E233 := E233 + 1;
      Microbit.Timewithrtc1'Elab_Spec;
      Microbit.Timewithrtc1'Elab_Body;
      E187 := E187 + 1;
      Microbit.Buttons'Elab_Body;
      E185 := E185 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

   procedure main is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
   end;

--  BEGIN Object file/option list
   --   C:\GitHub\Game_Console\scrolling\obj\main.o
   --   -LC:\GitHub\Game_Console\scrolling\obj\
   --   -LC:\GitHub\Game_Console\scrolling\obj\
   --   -LC:\GitHub\USN\boards\MicroBit_v2\obj\full_lib_Debug\
   --   -LC:\gnat\2021-arm-elf\arm-eabi\lib\gnat\ravenscar-full-nrf52833\adalib\
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
