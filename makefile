
pthreads:image_pthreads.c image_pthreads.h
	gcc -g -std=c99 image_pthreads.c -o image_pthreads -lm -lpthread

openmp:image_openmp.c image.h
	gcc -g -fopenmp image_openmp.c -o image_openmp -lm

image:image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image_pthreads image_openmp output.png
