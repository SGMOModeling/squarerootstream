program SquareRootStream

  implicit none
  
  integer             :: status
  character(len=1000) :: line
  real                :: value
  
  ! open input and output files
  open(11,file='STR_OUT.out')
  open(12,file='SQRTSTR_OUT.out')
  
  ! loop through all lines in input file
  do
    read(11,'(a40,f20.2)',iostat=status)line,value
    
    if (status < 0) exit
    if (status > 0) then
        write(*,*) "Error reading values from file"
    end if
    
    if (value < 0) then
      value=0
    else
      value=value**0.5
    end if
    write(12,'(a36,f20.2)')line,value
  end do
  
  ! close input and output files
  close(11)
  close(12)
  
end program
  