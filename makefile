
pthreads:image_pthreads.c image_pthreads.h
	gcc -g image_pthreads.c -o image -lm -lpthread

openmp:image_openmp.c image.h
	gcc -g -fopenmp image_openmp.c -o image -lm

image:image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image output.png
