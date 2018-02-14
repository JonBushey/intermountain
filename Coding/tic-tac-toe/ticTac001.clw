

                     MEMBER('ticTac.clw')                  ! This is a MEMBER module

!!! <summary>
!!! Generated from procedure template - Window
!!! </summary>
Main PROCEDURE

LocalRequest         LONG                                  ! 
OriginalRequest      LONG                                  ! 
LocalResponse        LONG                                  ! 
FilesOpened          LONG                                  ! 
WindowOpened         LONG                                  ! 
WindowInitialized    LONG                                  ! 
ForceRefresh         LONG                                  ! 
loc:board            SHORT,DIM(9)                          ! 
loc:top_message      STRING(80)                            ! 
loc:bottom_message   STRING(80)                            ! 
loc:winner           SHORT                                 ! 
Window               WINDOW('Tic-Tic-Toe by Jon Bushey'),AT(,,330,417),FONT('Microsoft Sans Serif',8,,FONT:regular), |
  GRAY
                       BUTTON('&OK'),AT(19,394,41,14),USE(?OkButton),LEFT,ICON('WAOk.ico'),DEFAULT
                       BUTTON('&Cancel'),AT(264,394,47,14),USE(?CancelButton),LEFT,ICON('WACancel.ico')
                       BUTTON('Click Here'),AT(50,68,48,43),USE(?BUTTON1)
                       BUTTON('Click Here'),AT(135,68,48,43),USE(?BUTTON1:2)
                       BUTTON('Click Here'),AT(220,68,48,43),USE(?BUTTON3)
                       BUTTON('Click Here'),AT(50,135,48,43),USE(?BUTTON4)
                       BUTTON('Click Here'),AT(135,135,48,43),USE(?BUTTON5)
                       BUTTON('Click Here'),AT(220,135,48,43),USE(?BUTTON6)
                       BUTTON('Click Here'),AT(50,204,48,43),USE(?BUTTON7)
                       BUTTON('Click Here'),AT(135,204,48,43),USE(?BUTTON8)
                       BUTTON('Click Here'),AT(220,204,48,43),USE(?BUTTON9)
                       STRING(@s80),AT(3,26,325,10),USE(loc:top_message),CENTER
                       STRING(@s80),AT(3,286,325,15),USE(loc:bottom_message),FONT(,12),CENTER
                       LINE,AT(117,58,0,200),USE(?LINE1),COLOR(COLOR:Black),LINEWIDTH(2)
                       LINE,AT(201,58,0,200),USE(?LINE1:2),COLOR(COLOR:Black),LINEWIDTH(2)
                       LINE,AT(30,124,262,0),USE(?LINE1:3),COLOR(COLOR:Black),LINEWIDTH(2)
                       LINE,AT(30,191,262,0),USE(?LINE1:4),COLOR(COLOR:Black),LINEWIDTH(2)
                     END
  CODE
  PUSHBIND
  LocalRequest    = GlobalRequest
  OriginalRequest = GlobalRequest
  LocalResponse   = RequestCancelled
  ForceRefresh    = False
  CLEAR(GlobalRequest)
  CLEAR(GlobalResponse)
  IF KEYCODE() = MouseRight
    SETKEYCODE(0)
  END
  DO PrepareProcedure
  ACCEPT
    CASE EVENT()
    OF EVENT:DoResize
      ForceRefresh = True
      DO RefreshWindow
    OF EVENT:GainFocus
      ForceRefresh = True
      IF NOT WindowInitialized
        DO InitializeWindow
        WindowInitialized = True
      ELSE
        DO RefreshWindow
      END
    OF EVENT:OpenWindow
      IF NOT WindowInitialized
        DO InitializeWindow
        WindowInitialized = True
      END
      SELECT(?OkButton)
    OF EVENT:Sized
      POST(EVENT:DoResize,0,THREAD())
    OF Event:Rejected
      BEEP
      DISPLAY(?)
      SELECT(?)
    END
    CASE FIELD()
    OF ?CancelButton
      CASE EVENT()
      OF EVENT:Accepted
        DO SyncWindow
         POST(EVENT:CloseWindow)
      END
    OF ?BUTTON1
      CASE EVENT()
      OF EVENT:Accepted
        DO SyncWindow
         if glo:whos_turn 
          ?button1{PROP:Text} = 'X'
          loc:board[1] = 1
         ELSE
          ?button1{PROP:Text} = 'O'
          loc:board[1] = -1
         END
         ?button1{PROP:FontSize} = 30
         disable(?button1)
         do handle_click
      END
    OF ?BUTTON1:2
      CASE EVENT()
      OF EVENT:Accepted
        DO SyncWindow
         if glo:whos_turn 
          ?button1:2{PROP:Text} = 'X'
          loc:board[2] = 1
         ELSE
          ?button1:2{PROP:Text} = 'O'
          loc:board[2] = -1
         END
         ?button1:2{PROP:FontSize} = 30
         disable(?button1:2)
         do handle_click
      END
    OF ?BUTTON3
      CASE EVENT()
      OF EVENT:Accepted
        DO SyncWindow
         if glo:whos_turn 
          ?button3{PROP:Text} = 'X'
          loc:board[3] = 1
         ELSE
          ?button3{PROP:Text} = 'O'
          loc:board[3] = -1
         END
         ?button3{PROP:FontSize} = 30
         disable(?button3)
         do handle_click
      END
    OF ?BUTTON4
      CASE EVENT()
      OF EVENT:Accepted
        DO SyncWindow
         if glo:whos_turn 
          ?button4{PROP:Text} = 'X'
          loc:board[4] = 1
         ELSE
          ?button4{PROP:Text} = 'O'
          loc:board[4] = -1
         END
         ?button4{PROP:FontSize} = 30
         disable(?button4)
         do handle_click
      END
    OF ?BUTTON5
      CASE EVENT()
      OF EVENT:Accepted
        DO SyncWindow
         if glo:whos_turn 
          ?button5{PROP:Text} = 'X'
          loc:board[5] = 1
         ELSE
          ?button5{PROP:Text} = 'O'
          loc:board[5] = -1
         END
         ?button5{PROP:FontSize} = 30
         disable(?button5)
         do handle_click
      END
    OF ?BUTTON6
      CASE EVENT()
      OF EVENT:Accepted
        DO SyncWindow
         if glo:whos_turn 
          ?button6{PROP:Text} = 'X'
          loc:board[6] = 1
         ELSE
          ?button6{PROP:Text} = 'O'
          loc:board[6] = -1
         END
         ?button6{PROP:FontSize} = 30
         disable(?button6)
         do handle_click
      END
    OF ?BUTTON7
      CASE EVENT()
      OF EVENT:Accepted
        DO SyncWindow
         if glo:whos_turn 
          ?button7{PROP:Text} = 'X'
          loc:board[7] = 1
         ELSE
          ?button7{PROP:Text} = 'O'
          loc:board[7] = -1
         END
         ?button7{PROP:FontSize} = 30
         disable(?button7)
         do handle_click
      END
    OF ?BUTTON8
      CASE EVENT()
      OF EVENT:Accepted
        DO SyncWindow
         if glo:whos_turn 
          ?button8{PROP:Text} = 'X'
          loc:board[8] = 1
         ELSE
          ?button8{PROP:Text} = 'O'
          loc:board[8] = -1
         END
         ?button8{PROP:FontSize} = 30
         disable(?button8)
         do handle_click
      END
    OF ?BUTTON9
      CASE EVENT()
      OF EVENT:Accepted
        DO SyncWindow
         if glo:whos_turn 
          ?button9{PROP:Text} = 'X'
          loc:board[9] = 1
         ELSE
          ?button9{PROP:Text} = 'O'
          loc:board[9] = -1
         END
         ?button9{PROP:FontSize} = 30
         disable(?button9)
         do handle_click
      END
    END
  END
  DO ProcedureReturn
!---------------------------------------------------------------------------
PrepareProcedure ROUTINE
  FilesOpened = TRUE
  DO BindFields
   loc:top_message = 'X plays first.'
  OPEN(Window)
  WindowOpened=True
  Do DefineListboxStyle

!---------------------------------------------------------------------------
BindFields ROUTINE
!---------------------------------------------------------------------------
UnBindFields ROUTINE
!---------------------------------------------------------------------------
ProcedureReturn ROUTINE
!|
!| This routine provides a common procedure exit point for all template
!| generated procedures.
!|
!| First, all of the files opened by this procedure are closed.
!|
!| Next, if it was opened by this procedure, the window is closed.
!|
!| Next, GlobalResponse is assigned a value to signal the calling procedure
!| what happened in this procedure.
!|
!| Next, we replace the BINDings that were in place when the procedure initialized
!| (and saved with PUSHBIND) using POPBIND.
!|
!| Finally, we return to the calling procedure.
!|
  IF FilesOpened
  END
  IF WindowOpened
    CLOSE(Window)
  END
  Do UnBindFields
  IF LocalResponse
    GlobalResponse = LocalResponse
  ELSE
    GlobalResponse = RequestCancelled
  END
  POPBIND
  RETURN
!---------------------------------------------------------------------------
InitializeWindow ROUTINE
!|
!| This routine is used to prepare any control templates for use. It should be called once
!| per procedure.
!|
  DO RefreshWindow
!---------------------------------------------------------------------------
RefreshWindow ROUTINE
!|
!| This routine is used to keep all displays and control templates current.
!|
  IF Window{Prop:AcceptAll} THEN EXIT.
  Do LookupRelated
  DISPLAY()
  ForceRefresh = False
!---------------------------------------------------------------------------
SyncWindow ROUTINE
!|
!| This routine is used to insure that any records pointed to in control
!| templates are fetched before any procedures are called via buttons or menu
!| options.
!|
  Do LookupRelated
!---------------------------------------------------------------------------
LookupRelated  ROUTINE
!|
!| This routine fetch all related records.
!| It's called from SyncWindow and RefreshWindow
!|
!---------------------------------------------------------------------------
DefineListboxStyle ROUTINE
!|
!| This routine create all the styles to be shared in this window
!| It's called after the window open
!|
!---------------------------------------------------------------------------
handle_click ROUTINE

 ! message('Handle_click')

  loc:top_message = ''
  if glo:whos_turn
    glo:whos_turn = 0
    loc:bottom_message = 'Now it is O''s turn'
    turns# += 1
  ELSE
    glo:whos_turn = 1
    loc:bottom_message = 'Now it is X''s turn'
  end

    win#=loc:board[1]+loc:board[2]+loc:board[3]
    if Win# = 3 ; loc:winner = 1 .
    if Win# = -3 ; loc:winner = -1 .
    win#=loc:board[4]+loc:board[5]+loc:board[6]
    if Win# = 3 ; loc:winner = 1 .
    if Win# = -3 ; loc:winner = -1 .
    win#=loc:board[7]+loc:board[8]+loc:board[9]
    if Win# = 3 ; loc:winner = 1 .
    if Win# = -3 ; loc:winner = -1 .
    win#=loc:board[1]+loc:board[4]+loc:board[7]
    if Win# = 3 ; loc:winner = 1 .
    if Win# = -3 ; loc:winner = -1 .
    win#=loc:board[2]+loc:board[5]+loc:board[8]
    if Win# = 3 ; loc:winner = 1 .
    if Win# = -3 ; loc:winner = -1 .
    win#=loc:board[3]+loc:board[6]+loc:board[9]
    if Win# = 3 ; loc:winner = 1 .
    if Win# = -3 ; loc:winner = -1 .
    win#=loc:board[1]+loc:board[5]+loc:board[9]
    if Win# = 3 ; loc:winner = 1 .
    if Win# = -3 ; loc:winner = -1 .
    win#=loc:board[3]+loc:board[5]+loc:board[7]
    if Win# = 3 ; loc:winner = 1 .
    if Win# = -3 ; loc:winner = -1 .
    if loc:winner = 1 
      loc:bottom_message = '"X" has WON!!!!  Game over.'
      loop control# = 3 to 11
       control#{PROP:Disable} = 1
       IF loc:board[control#-2] = 0 ; control#{PROP:TEXT} = '' .
      .
    elsif loc:winner = -1 
      loc:bottom_message = '"O" has WON!!!!  Game over.'
      loop control# = 3 to 11
       control#{PROP:Disable} = 1
       IF loc:board[control#-2] = 0 ; control#{PROP:TEXT} = '' .
      .
    elsif turns# > 4
      loc:bottom_message = 'No winner in this game.  SO Game over.'
    end

  display
  
 exit
