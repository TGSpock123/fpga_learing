import math

TABLE_SIZE = 257
AMP = 32767

print("constant sin_table: sin_table_type := (")
for i in range(TABLE_SIZE):
    theta = (i / 256.0) * (math.pi / 2.0)
    val = round(AMP * math.sin(theta))

    comma = "," if i != TABLE_SIZE - 1 else ""
    print(f"    {i} => to_signed({val}, 16){comma}")
print(");")