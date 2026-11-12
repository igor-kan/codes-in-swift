/**
 * @file core.swift
 * @brief Welford numerically stable one-pass running mean and variance algorithm for One-Pass Running Mean and Variance Accumulator.
 * Module: welford_statistical_stream
 */

#include "types.swift"
#include <math.h>

typedef struct welford_statistical_stream_welford {
    size_t count;
    double mean;
    double m2;
} welford_statistical_stream_welford_t;

void welford_statistical_stream_update(welford_statistical_stream_welford_t* w, double x) {
    if (!w) return;
    w->count += 1;
    double delta = x - w->mean;
    w->mean += delta / (double)w->count;
    double delta2 = x - w->mean;
    w->m2 += delta * delta2;
}

double welford_statistical_stream_variance(const welford_statistical_stream_welford_t* w) {
    return (w && w->count > 1) ? (w->m2 / (double)(w->count - 1)) : 0.0;
}
