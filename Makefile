UNITTESTS = test_invert.rkt test_x_product.rkt test_down.rkt test_swapper.rkt test_count.rkt

.SILENT:


unit: 
	for tst in $(UNITTESTS); do \
		raco test test/$$tst; \
	done

test_%:
	raco test test/$@.rkt



