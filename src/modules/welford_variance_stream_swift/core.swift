/**
 * @file core.swift
 * @brief Numerically stable mean and variance calculation for One-Pass Running Mean and Standard Deviation Stream.
 * Module: welford_variance_stream_swift
 */

#include "types.swift"

typedef struct welford_variance_stream_swift_stat_acc {
    size_t count;
    double mean;
    double m2;
} welford_variance_stream_swift_stat_acc_t;

void welford_variance_stream_swift_add_sample(welford_variance_stream_swift_stat_acc_t* s, double val) {
    if (!s) return;
    s->count += 1;
    double delta = val - s->mean;
    s->mean += delta / (double)s->count;
    double delta2 = val - s->mean;
    s->m2 += delta * delta2;
}

double welford_variance_stream_swift_compute_var(const welford_variance_stream_swift_stat_acc_t* s) {
    return (s && s->count > 1) ? (s->m2 / (double)(s->count - 1)) : 0.0;
}
