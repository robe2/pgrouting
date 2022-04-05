SET extra_float_digits=-3;

/* --q1 */
SELECT * FROM pgr_withPointsVia(
    'SELECT id, source, target, cost, reverse_cost FROM edge_table ORDER BY id',
    'SELECT pid, edge_id, fraction, side from pointsOfInterest',
    ARRAY[1,3,5]);
/* --q2 */
SELECT * FROM pgr_withPointsDD(
    'SELECT id, source, target, cost, reverse_cost FROM edge_table ORDER BY id',
    'SELECT pid, edge_id, fraction, side from pointsOfInterest',
    3, 3.0,
    driving_side := 'r',
    details := true);
/* --q3 */
SELECT * FROM pgr_withPointsDD(
    'SELECT id, source, target, cost, reverse_cost FROM edge_table ORDER BY id',
    'SELECT pid, edge_id, fraction, side from pointsOfInterest',
    3, 3.0,
    driving_side := 'l',
    details := true);
/* --q4 */
SELECT * FROM pgr_withPointsDD(
    'SELECT id, source, target, cost, reverse_cost FROM edge_table ORDER BY id',
    'SELECT pid, edge_id, fraction, side from pointsOfInterest',
    3, 3.0,
    driving_side := 'b',
    details := true);
/* --q5 */
