*&---------------------------------------------------------------------*
*& Report ZALR_PI_MESSAGE_SHOW
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report zalr_pi_message_show.

parameters guid type guid obligatory.

start-of-selection.

  try.
      zcl_pi_static=>show_message( guid ).
      data lx_fail type ref to zcx_generic.
    catch zcx_generic into lx_fail.
      lx_fail->write( ).
  endtry.
