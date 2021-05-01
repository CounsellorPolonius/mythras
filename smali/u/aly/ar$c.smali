.class Lu/aly/ar$c;
.super Lu/aly/dr;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/ar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1217
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ar$1;)V
    .locals 0

    .line 1217
    invoke-direct {p0}, Lu/aly/ar$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/ar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 1221
    check-cast p1, Lu/aly/dm;

    .line 1222
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1223
    invoke-virtual {p2}, Lu/aly/ar;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1224
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1226
    :cond_0
    invoke-virtual {p2}, Lu/aly/ar;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 1227
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1229
    :cond_1
    invoke-virtual {p2}, Lu/aly/ar;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 1230
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1232
    :cond_2
    invoke-virtual {p2}, Lu/aly/ar;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 1233
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1235
    :cond_3
    invoke-virtual {p2}, Lu/aly/ar;->r()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 1236
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1238
    :cond_4
    invoke-virtual {p2}, Lu/aly/ar;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 1239
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1241
    :cond_5
    invoke-virtual {p2}, Lu/aly/ar;->x()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 1242
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1244
    :cond_6
    invoke-virtual {p2}, Lu/aly/ar;->A()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 1245
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1247
    :cond_7
    invoke-virtual {p2}, Lu/aly/ar;->D()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 1248
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1250
    :cond_8
    invoke-virtual {p2}, Lu/aly/ar;->G()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 1251
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1253
    :cond_9
    invoke-virtual {p2}, Lu/aly/ar;->J()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 1254
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1256
    :cond_a
    invoke-virtual {p2}, Lu/aly/ar;->M()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    .line 1257
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1259
    :cond_b
    invoke-virtual {p2}, Lu/aly/ar;->P()Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    .line 1260
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1262
    :cond_c
    invoke-virtual {p2}, Lu/aly/ar;->S()Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0xd

    .line 1263
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1265
    :cond_d
    invoke-virtual {p2}, Lu/aly/ar;->V()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0xe

    .line 1266
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1268
    :cond_e
    invoke-virtual {p2}, Lu/aly/ar;->Y()Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    .line 1269
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1271
    :cond_f
    invoke-virtual {p2}, Lu/aly/ar;->ab()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x10

    .line 1272
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_10
    const/16 v1, 0x11

    .line 1274
    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(Ljava/util/BitSet;I)V

    .line 1275
    invoke-virtual {p2}, Lu/aly/ar;->e()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1276
    iget-object v0, p2, Lu/aly/ar;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 1278
    :cond_11
    invoke-virtual {p2}, Lu/aly/ar;->i()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1279
    iget-object v0, p2, Lu/aly/ar;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 1281
    :cond_12
    invoke-virtual {p2}, Lu/aly/ar;->l()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1282
    iget-object v0, p2, Lu/aly/ar;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 1284
    :cond_13
    invoke-virtual {p2}, Lu/aly/ar;->o()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1285
    iget-object v0, p2, Lu/aly/ar;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 1287
    :cond_14
    invoke-virtual {p2}, Lu/aly/ar;->r()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1288
    iget-object v0, p2, Lu/aly/ar;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 1290
    :cond_15
    invoke-virtual {p2}, Lu/aly/ar;->u()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1291
    iget-object v0, p2, Lu/aly/ar;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 1293
    :cond_16
    invoke-virtual {p2}, Lu/aly/ar;->x()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1294
    iget-object v0, p2, Lu/aly/ar;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 1296
    :cond_17
    invoke-virtual {p2}, Lu/aly/ar;->A()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1297
    iget-object v0, p2, Lu/aly/ar;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 1299
    :cond_18
    invoke-virtual {p2}, Lu/aly/ar;->D()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1300
    iget-object v0, p2, Lu/aly/ar;->i:Lu/aly/bi;

    invoke-virtual {v0, p1}, Lu/aly/bi;->b(Lu/aly/dg;)V

    .line 1302
    :cond_19
    invoke-virtual {p2}, Lu/aly/ar;->G()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1303
    iget-boolean v0, p2, Lu/aly/ar;->j:Z

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Z)V

    .line 1305
    :cond_1a
    invoke-virtual {p2}, Lu/aly/ar;->J()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1306
    iget-boolean v0, p2, Lu/aly/ar;->k:Z

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Z)V

    .line 1308
    :cond_1b
    invoke-virtual {p2}, Lu/aly/ar;->M()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1309
    iget-object v0, p2, Lu/aly/ar;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 1311
    :cond_1c
    invoke-virtual {p2}, Lu/aly/ar;->P()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1312
    iget-object v0, p2, Lu/aly/ar;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 1314
    :cond_1d
    invoke-virtual {p2}, Lu/aly/ar;->S()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1315
    iget-wide v0, p2, Lu/aly/ar;->n:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(J)V

    .line 1317
    :cond_1e
    invoke-virtual {p2}, Lu/aly/ar;->V()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1318
    iget-object v0, p2, Lu/aly/ar;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 1320
    :cond_1f
    invoke-virtual {p2}, Lu/aly/ar;->Y()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1321
    iget-object v0, p2, Lu/aly/ar;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 1323
    :cond_20
    invoke-virtual {p2}, Lu/aly/ar;->ab()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1324
    iget-object p2, p2, Lu/aly/ar;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lu/aly/dm;->a(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public bridge synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 1217
    check-cast p2, Lu/aly/ar;

    invoke-virtual {p0, p1, p2}, Lu/aly/ar$c;->a(Lu/aly/dg;Lu/aly/ar;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/ar;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 1330
    check-cast p1, Lu/aly/dm;

    const/16 v0, 0x11

    .line 1331
    invoke-virtual {p1, v0}, Lu/aly/dm;->b(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    .line 1332
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1333
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->a:Ljava/lang/String;

    .line 1334
    invoke-virtual {p2, v2}, Lu/aly/ar;->a(Z)V

    .line 1336
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1337
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->b:Ljava/lang/String;

    .line 1338
    invoke-virtual {p2, v2}, Lu/aly/ar;->b(Z)V

    :cond_1
    const/4 v1, 0x2

    .line 1340
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1341
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->c:Ljava/lang/String;

    .line 1342
    invoke-virtual {p2, v2}, Lu/aly/ar;->c(Z)V

    :cond_2
    const/4 v1, 0x3

    .line 1344
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1345
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->d:Ljava/lang/String;

    .line 1346
    invoke-virtual {p2, v2}, Lu/aly/ar;->d(Z)V

    :cond_3
    const/4 v1, 0x4

    .line 1348
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1349
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->e:Ljava/lang/String;

    .line 1350
    invoke-virtual {p2, v2}, Lu/aly/ar;->e(Z)V

    :cond_4
    const/4 v1, 0x5

    .line 1352
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1353
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->f:Ljava/lang/String;

    .line 1354
    invoke-virtual {p2, v2}, Lu/aly/ar;->f(Z)V

    :cond_5
    const/4 v1, 0x6

    .line 1356
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1357
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->g:Ljava/lang/String;

    .line 1358
    invoke-virtual {p2, v2}, Lu/aly/ar;->g(Z)V

    :cond_6
    const/4 v1, 0x7

    .line 1360
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1361
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->h:Ljava/lang/String;

    .line 1362
    invoke-virtual {p2, v2}, Lu/aly/ar;->h(Z)V

    :cond_7
    const/16 v1, 0x8

    .line 1364
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1365
    new-instance v1, Lu/aly/bi;

    invoke-direct {v1}, Lu/aly/bi;-><init>()V

    iput-object v1, p2, Lu/aly/ar;->i:Lu/aly/bi;

    .line 1366
    iget-object v1, p2, Lu/aly/ar;->i:Lu/aly/bi;

    invoke-virtual {v1, p1}, Lu/aly/bi;->a(Lu/aly/dg;)V

    .line 1367
    invoke-virtual {p2, v2}, Lu/aly/ar;->i(Z)V

    :cond_8
    const/16 v1, 0x9

    .line 1369
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1370
    invoke-virtual {p1}, Lu/aly/dm;->t()Z

    move-result v1

    iput-boolean v1, p2, Lu/aly/ar;->j:Z

    .line 1371
    invoke-virtual {p2, v2}, Lu/aly/ar;->k(Z)V

    :cond_9
    const/16 v1, 0xa

    .line 1373
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1374
    invoke-virtual {p1}, Lu/aly/dm;->t()Z

    move-result v1

    iput-boolean v1, p2, Lu/aly/ar;->k:Z

    .line 1375
    invoke-virtual {p2, v2}, Lu/aly/ar;->m(Z)V

    :cond_a
    const/16 v1, 0xb

    .line 1377
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1378
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->l:Ljava/lang/String;

    .line 1379
    invoke-virtual {p2, v2}, Lu/aly/ar;->n(Z)V

    :cond_b
    const/16 v1, 0xc

    .line 1381
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1382
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->m:Ljava/lang/String;

    .line 1383
    invoke-virtual {p2, v2}, Lu/aly/ar;->o(Z)V

    :cond_c
    const/16 v1, 0xd

    .line 1385
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1386
    invoke-virtual {p1}, Lu/aly/dm;->x()J

    move-result-wide v3

    iput-wide v3, p2, Lu/aly/ar;->n:J

    .line 1387
    invoke-virtual {p2, v2}, Lu/aly/ar;->p(Z)V

    :cond_d
    const/16 v1, 0xe

    .line 1389
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1390
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->o:Ljava/lang/String;

    .line 1391
    invoke-virtual {p2, v2}, Lu/aly/ar;->q(Z)V

    :cond_e
    const/16 v1, 0xf

    .line 1393
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1394
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->p:Ljava/lang/String;

    .line 1395
    invoke-virtual {p2, v2}, Lu/aly/ar;->r(Z)V

    :cond_f
    const/16 v1, 0x10

    .line 1397
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1398
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lu/aly/ar;->q:Ljava/lang/String;

    .line 1399
    invoke-virtual {p2, v2}, Lu/aly/ar;->s(Z)V

    :cond_10
    return-void
.end method

.method public bridge synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 1217
    check-cast p2, Lu/aly/ar;

    invoke-virtual {p0, p1, p2}, Lu/aly/ar$c;->b(Lu/aly/dg;Lu/aly/ar;)V

    return-void
.end method
