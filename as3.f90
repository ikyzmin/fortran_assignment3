integer , parameter :: N = 100
real :: am(N,N),a(N),startTime,endTime
integer i,j
integer :: matr(2,2)
real :: bm(N,N),b(N)
real, dimension(3,3) :: reordered, matrix
call cpu_time(startTime)
do i=1,N
do j=1,N
a(i,N) = 1.0
enddo
enddo
call cpu_time(endTime)

print *, "initializing with for time: ", endTime-startTime, " seconds"

call cpu_time(startTime)
b=  (/(1.0,i=1,N)/)
call cpu_time(endTime)

print *, "initializing with for time: ", endTime-startTime, " seconds"

call cpu_time(startTime)
do i=1,N
a(i) = 0.1
enddo
do i=1,N
b(i)=a(i)
enddo
call cpu_time(endTime)

print *, "element-wise operation with for time: ", endTime-startTime, " seconds"

call cpu_time(startTime)
a = 0.2
b = a
call cpu_time(endTime)

print *, "element-wise operation without for time: ", endTime-startTime, " seconds"

matr(1,:) = 5

print *,matr(1,:)
print *,matr(2,:)

do i=1,3
do j= 1,3
matrix(i,j) = i
enddo
enddo
reordered(:,:) = matrix(:,(/2,1,3/))
print *,reordered(1,:)
print *,reordered(2,:)
print *, reordered(3,:)
end


