program SquareRootStream

  implicit none
  
  integer             :: status
  character(len=1000) :: line, inputFilename, outputFilename
  real                :: value
  
  ! Read the input file name and output file name from command line arguments
  if (command_argument_count() /= 2) then
    write(*, *) "Usage: program_name <input_file> <output_file>"
    stop
  end if
  
  ! get file names from the command line
  call get_command_argument(1, inputFilename)
  call get_command_argument(2, outputFilename)
  
  ! open input and output files
  open(11,file=trim(inputFilename))
  open(12,file=trim(outputFilename))
  
  ! loop through all lines in input file
  do
    read(11,'(a40,f20.2)',iostat=status)line,value
    
    if (status < 0) exit
    if (status > 0) then
      write(*,*) "Error reading values from file"
    end if
    
    if (value > 0) then
      value=value**0.5
    else
      value=0
    end if
    write(12,'(a36,f20.2)')line,value
  end do
  
  ! close input and output files
  close(11)
  close(12)
  
end program
  