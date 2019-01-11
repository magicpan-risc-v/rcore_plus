// http://llvm.org/docs/Atomics.html#libcalls-atomic

inline void mb() {
    __asm__ __volatile__("fence" ::: "memory");
}

typedef unsigned u32;

u32 __atomic_load_1(u32 *ptr) {
    return *ptr;
}

u32 __atomic_load_2(u32 *ptr) {
    return *ptr;
}

// relaxed
u32 __atomic_load_4(u32 *ptr) {
    return *ptr;
}

// release
void __atomic_store_4(u32 *ptr, u32 val) {
    mb();
    __asm__ __volatile__("amoswap.w zero, %0, (%1)" :: "r"(val), "r"(ptr) : "memory");
}

// strong, acquire
char __atomic_compare_exchange_4(u32* ptr, u32* expected, u32 desired) {
    u32 val, expect = *expected, result, ret;
    while(1) {
        __asm__ __volatile__("lr.w.aq %0, (%1)" : "=r"(val) : "r"(ptr) : "memory");

        ret = val == expect;
        if(!ret) {
            // *expected should always equal to the previous value of *ptr
            *expected = val;
            return ret;
        }

        // Try: *ptr = desired. If success, result == 0, otherwise result != 0.
        __asm__ __volatile__("sc.w.aq %0, %1, (%2)" : "=r"(result) : "r"(desired), "r"(ptr) : "memory");
        if(result == 0) {
            return ret;
        }
    }
}

u32 __atomic_fetch_add_4(u32* ptr, u32 val) {
    u32 res;
    __asm__ __volatile__("amoadd.w %0, %1, (%2)" : "=r"(res) : "r"(val), "r"(ptr) : "memory");
    return res;
}

u32 __atomic_fetch_sub_4(u32* ptr, u32 val) {
    u32 res;
    __asm__ __volatile__("amoadd.w %0, %1, (%2)" : "=r"(res) : "r"(-val), "r"(ptr) : "memory");
    return res;
}

void abort() {
    while(1) {}
}
