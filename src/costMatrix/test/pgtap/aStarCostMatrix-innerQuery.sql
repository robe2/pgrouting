\i setup.sql

SELECT plan(87);


SELECT has_function('pgr_astarcostmatrix',
    ARRAY['text', 'anyarray', 'boolean', 'integer', 'double precision', 'double precision']);

SELECT function_returns('pgr_astarcostmatrix',
    ARRAY['text', 'anyarray', 'boolean', 'integer', 'double precision', 'double precision'],
    'setof record');


-- ONE TO ONE
--with reverse cost
SELECT test_anyInteger('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'reverse_cost', 'x1', 'y1', 'x2', 'y2'],
    'id');
SELECT test_anyInteger('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'reverse_cost', 'x1', 'y1', 'x2', 'y2'],
    'source');
SELECT test_anyInteger('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'reverse_cost', 'x1', 'y1', 'x2', 'y2'],
    'target');
SELECT test_anyNumerical('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'reverse_cost', 'x1', 'y1', 'x2', 'y2'],
    'cost');
SELECT test_anyNumerical('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'reverse_cost', 'x1', 'y1', 'x2', 'y2'],
    'reverse_cost');
SELECT test_anyNumerical('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'reverse_cost', 'x1', 'y1', 'x2', 'y2'],
    'x1');
SELECT test_anyNumerical('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'reverse_cost', 'x1', 'y1', 'x2', 'y2'],
    'y1');
SELECT test_anyNumerical('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'reverse_cost', 'x1', 'y1', 'x2', 'y2'],
    'x2');
SELECT test_anyNumerical('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'reverse_cost', 'x1', 'y1', 'x2', 'y2'],
    'y2');


--without reverse cost
SELECT test_anyInteger('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'x1', 'y1', 'x2', 'y2'],
    'id');
SELECT test_anyInteger('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'x1', 'y1', 'x2', 'y2'],
    'source');
SELECT test_anyInteger('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'x1', 'y1', 'x2', 'y2'],
    'target');
SELECT test_anyNumerical('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'x1', 'y1', 'x2', 'y2'],
    'cost');
SELECT test_anyNumerical('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'x1', 'y1', 'x2', 'y2'],
    'x1');
SELECT test_anyNumerical('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'x1', 'y1', 'x2', 'y2'],
    'y1');
SELECT test_anyNumerical('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'x1', 'y1', 'x2', 'y2'],
    'x2');
SELECT test_anyNumerical('pgr_astarcostmatrix', ',ARRAY[2, 3], true)',
    ARRAY['id', 'source', 'target', 'cost', 'x1', 'y1', 'x2', 'y2'],
    'y2');



SELECT finish();
ROLLBACK;
