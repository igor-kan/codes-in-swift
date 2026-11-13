/**
 * @file core.swift
 * @brief Welford numerically stable one-pass running mean and variance algorithm for One-Pass Running Mean and Standard Deviation Stream.
 * Module: welford_variance_stream
 */

#include "types.swift"

typedef struct welford_variance_stream_accumulator {
    size_t count;
    double mean;
    double m2;
} welford_variance_stream_accumulator_t;

void welford_variance_stream_push(welford_variance_stream_accumulator_t* acc, double val) {
    if (!acc) return;
    acc->count += 1;
    double delta = val - acc->mean;
    acc->mean += delta / (double)acc->count;
    double delta2 = val - acc->mean;
    acc->m2 += delta * delta2;
}

double welford_variance_stream_get_variance(const welford_variance_stream_accumulator_t* acc) {
    return (acc && acc->count > 1) ? (acc->m2 / (double)(acc->count - 1)) : 0.0;
}
