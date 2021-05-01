.class public Lu/aly/as;
.super Ljava/lang/Object;
.source "Ekv.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/as$c;,
        Lu/aly/as$d;,
        Lu/aly/as$a;,
        Lu/aly/as$b;,
        Lu/aly/as$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/as;",
        "Lu/aly/as$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/as$e;",
            "Lu/aly/ct;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lu/aly/dl;

.field private static final h:Lu/aly/db;

.field private static final i:Lu/aly/db;

.field private static final j:Lu/aly/db;

.field private static final k:Lu/aly/db;

.field private static final l:Lu/aly/db;

.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lu/aly/do;",
            ">;",
            "Lu/aly/dp;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0x2


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field public e:I

.field private q:B

.field private r:[Lu/aly/as$e;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 35
    new-instance v0, Lu/aly/dl;

    const-string v1, "Ekv"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/as;->g:Lu/aly/dl;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "ts"

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/as;->h:Lu/aly/db;

    .line 38
    new-instance v0, Lu/aly/db;

    const-string v1, "name"

    const/4 v4, 0x2

    const/16 v5, 0xb

    invoke-direct {v0, v1, v5, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/as;->i:Lu/aly/db;

    .line 39
    new-instance v0, Lu/aly/db;

    const-string v1, "ckv"

    const/16 v6, 0xd

    const/4 v7, 0x3

    invoke-direct {v0, v1, v6, v7}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/as;->j:Lu/aly/db;

    .line 40
    new-instance v0, Lu/aly/db;

    const-string v1, "duration"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v3, v7}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/as;->k:Lu/aly/db;

    .line 41
    new-instance v0, Lu/aly/db;

    const-string v1, "acc"

    const/16 v7, 0x8

    const/4 v8, 0x5

    invoke-direct {v0, v1, v7, v8}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/as;->l:Lu/aly/db;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/as;->m:Ljava/util/Map;

    .line 45
    sget-object v0, Lu/aly/as;->m:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v8, Lu/aly/as$b;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lu/aly/as$b;-><init>(Lu/aly/as$1;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lu/aly/as;->m:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v8, Lu/aly/as$d;

    invoke-direct {v8, v9}, Lu/aly/as$d;-><init>(Lu/aly/as$1;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/as$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 134
    sget-object v1, Lu/aly/as$e;->a:Lu/aly/as$e;

    new-instance v8, Lu/aly/ct;

    const-string v9, "ts"

    new-instance v10, Lu/aly/cu;

    invoke-direct {v10, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v8, v9, v2, v10}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lu/aly/as$e;->b:Lu/aly/as$e;

    new-instance v8, Lu/aly/ct;

    const-string v9, "name"

    new-instance v10, Lu/aly/cu;

    invoke-direct {v10, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v8, v9, v2, v10}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lu/aly/as$e;->c:Lu/aly/as$e;

    new-instance v8, Lu/aly/ct;

    const-string v9, "ckv"

    new-instance v10, Lu/aly/cw;

    new-instance v11, Lu/aly/cu;

    invoke-direct {v11, v5}, Lu/aly/cu;-><init>(B)V

    new-instance v12, Lu/aly/cu;

    invoke-direct {v12, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v10, v6, v11, v12}, Lu/aly/cw;-><init>(BLu/aly/cu;Lu/aly/cu;)V

    invoke-direct {v8, v9, v2, v10}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lu/aly/as$e;->d:Lu/aly/as$e;

    new-instance v2, Lu/aly/ct;

    const-string v5, "duration"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v5, v4, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lu/aly/as$e;->e:Lu/aly/as$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "acc"

    new-instance v5, Lu/aly/cu;

    invoke-direct {v5, v7}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v3, v4, v5}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/as;->f:Ljava/util/Map;

    .line 147
    const-class v0, Lu/aly/as;

    sget-object v1, Lu/aly/as;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-byte v0, p0, Lu/aly/as;->q:B

    const/4 v1, 0x2

    .line 130
    new-array v1, v1, [Lu/aly/as$e;

    sget-object v2, Lu/aly/as$e;->d:Lu/aly/as$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/as$e;->e:Lu/aly/as$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/as;->r:[Lu/aly/as$e;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lu/aly/as;-><init>()V

    .line 159
    iput-wide p1, p0, Lu/aly/as;->a:J

    const/4 p1, 0x1

    .line 160
    invoke-virtual {p0, p1}, Lu/aly/as;->a(Z)V

    .line 161
    iput-object p3, p0, Lu/aly/as;->b:Ljava/lang/String;

    .line 162
    iput-object p4, p0, Lu/aly/as;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lu/aly/as;)V
    .locals 4

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-byte v0, p0, Lu/aly/as;->q:B

    const/4 v1, 0x2

    .line 130
    new-array v1, v1, [Lu/aly/as$e;

    sget-object v2, Lu/aly/as$e;->d:Lu/aly/as$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/as$e;->e:Lu/aly/as$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/as;->r:[Lu/aly/as$e;

    .line 169
    iget-byte v0, p1, Lu/aly/as;->q:B

    iput-byte v0, p0, Lu/aly/as;->q:B

    .line 170
    iget-wide v0, p1, Lu/aly/as;->a:J

    iput-wide v0, p0, Lu/aly/as;->a:J

    .line 171
    invoke-virtual {p1}, Lu/aly/as;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p1, Lu/aly/as;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/as;->b:Ljava/lang/String;

    .line 174
    :cond_0
    invoke-virtual {p1}, Lu/aly/as;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    iget-object v1, p1, Lu/aly/as;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 179
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 187
    :cond_1
    iput-object v0, p0, Lu/aly/as;->c:Ljava/util/Map;

    .line 189
    :cond_2
    iget-wide v0, p1, Lu/aly/as;->d:J

    iput-wide v0, p0, Lu/aly/as;->d:J

    .line 190
    iget p1, p1, Lu/aly/as;->e:I

    iput p1, p0, Lu/aly/as;->e:I

    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 412
    :try_start_0
    iput-byte v0, p0, Lu/aly/as;->q:B

    .line 413
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/as;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 415
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/as;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 405
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic u()Lu/aly/dl;
    .locals 1

    .line 34
    sget-object v0, Lu/aly/as;->g:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic v()Lu/aly/db;
    .locals 1

    .line 34
    sget-object v0, Lu/aly/as;->h:Lu/aly/db;

    return-object v0
.end method

.method static synthetic w()Lu/aly/db;
    .locals 1

    .line 34
    sget-object v0, Lu/aly/as;->i:Lu/aly/db;

    return-object v0
.end method

.method static synthetic x()Lu/aly/db;
    .locals 1

    .line 34
    sget-object v0, Lu/aly/as;->j:Lu/aly/db;

    return-object v0
.end method

.method static synthetic y()Lu/aly/db;
    .locals 1

    .line 34
    sget-object v0, Lu/aly/as;->k:Lu/aly/db;

    return-object v0
.end method

.method static synthetic z()Lu/aly/db;
    .locals 1

    .line 34
    sget-object v0, Lu/aly/as;->l:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/as;
    .locals 1

    .line 194
    new-instance v0, Lu/aly/as;

    invoke-direct {v0, p0}, Lu/aly/as;-><init>(Lu/aly/as;)V

    return-object v0
.end method

.method public a(I)Lu/aly/as;
    .locals 0

    .line 319
    iput p1, p0, Lu/aly/as;->e:I

    const/4 p1, 0x1

    .line 320
    invoke-virtual {p0, p1}, Lu/aly/as;->e(Z)V

    return-object p0
.end method

.method public a(J)Lu/aly/as;
    .locals 0

    .line 214
    iput-wide p1, p0, Lu/aly/as;->a:J

    const/4 p1, 0x1

    .line 215
    invoke-virtual {p0, p1}, Lu/aly/as;->a(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/as;
    .locals 0

    .line 237
    iput-object p1, p0, Lu/aly/as;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lu/aly/as;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lu/aly/as;"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lu/aly/as;->c:Ljava/util/Map;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lu/aly/as;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/as;->c:Ljava/util/Map;

    .line 264
    :cond_0
    iget-object v0, p0, Lu/aly/as;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 342
    sget-object v0, Lu/aly/as;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dg;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dp;

    invoke-interface {v0}, Lu/aly/dp;->b()Lu/aly/do;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/do;->b(Lu/aly/dg;Lu/aly/ch;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 229
    iget-byte v0, p0, Lu/aly/as;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/as;->q:B

    return-void
.end method

.method public b(J)Lu/aly/as;
    .locals 0

    .line 296
    iput-wide p1, p0, Lu/aly/as;->d:J

    const/4 p1, 0x1

    .line 297
    invoke-virtual {p0, p1}, Lu/aly/as;->d(Z)V

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lu/aly/as;->c(I)Lu/aly/as$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0}, Lu/aly/as;->a(Z)V

    const-wide/16 v1, 0x0

    .line 200
    iput-wide v1, p0, Lu/aly/as;->a:J

    const/4 v3, 0x0

    .line 201
    iput-object v3, p0, Lu/aly/as;->b:Ljava/lang/String;

    .line 202
    iput-object v3, p0, Lu/aly/as;->c:Ljava/util/Map;

    .line 203
    invoke-virtual {p0, v0}, Lu/aly/as;->d(Z)V

    .line 204
    iput-wide v1, p0, Lu/aly/as;->d:J

    .line 205
    invoke-virtual {p0, v0}, Lu/aly/as;->e(Z)V

    .line 206
    iput v0, p0, Lu/aly/as;->e:I

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 346
    sget-object v0, Lu/aly/as;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dg;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dp;

    invoke-interface {v0}, Lu/aly/dp;->b()Lu/aly/do;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/do;->a(Lu/aly/dg;Lu/aly/ch;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 252
    iput-object p1, p0, Lu/aly/as;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()J
    .locals 2

    .line 210
    iget-wide v0, p0, Lu/aly/as;->a:J

    return-wide v0
.end method

.method public c(I)Lu/aly/as$e;
    .locals 0

    .line 338
    invoke-static {p1}, Lu/aly/as$e;->a(I)Lu/aly/as$e;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 287
    iput-object p1, p0, Lu/aly/as;->c:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 220
    iget-byte v0, p0, Lu/aly/as;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/as;->q:B

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 311
    iget-byte v0, p0, Lu/aly/as;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/as;->q:B

    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 334
    iget-byte v0, p0, Lu/aly/as;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/as;->q:B

    return-void
.end method

.method public e()Z
    .locals 2

    .line 225
    iget-byte v0, p0, Lu/aly/as;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lu/aly/as;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lu/aly/as;->a()Lu/aly/as;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lu/aly/as;->b:Ljava/lang/String;

    return-void
.end method

.method public i()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lu/aly/as;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()I
    .locals 1

    .line 257
    iget-object v0, p0, Lu/aly/as;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/as;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lu/aly/as;->c:Ljava/util/Map;

    return-object v0
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lu/aly/as;->c:Ljava/util/Map;

    return-void
.end method

.method public m()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lu/aly/as;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()J
    .locals 2

    .line 292
    iget-wide v0, p0, Lu/aly/as;->d:J

    return-wide v0
.end method

.method public o()V
    .locals 2

    .line 302
    iget-byte v0, p0, Lu/aly/as;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/as;->q:B

    return-void
.end method

.method public p()Z
    .locals 2

    .line 307
    iget-byte v0, p0, Lu/aly/as;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .line 315
    iget v0, p0, Lu/aly/as;->e:I

    return v0
.end method

.method public r()V
    .locals 2

    .line 325
    iget-byte v0, p0, Lu/aly/as;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/as;->q:B

    return-void
.end method

.method public s()Z
    .locals 2

    .line 330
    iget-byte v0, p0, Lu/aly/as;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public t()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lu/aly/as;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/as;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    iget-object v0, p0, Lu/aly/as;->c:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 396
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ckv\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/as;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ekv("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ts:"

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-wide v1, p0, Lu/aly/as;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name:"

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v1, p0, Lu/aly/as;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 362
    :cond_0
    iget-object v1, p0, Lu/aly/as;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ckv:"

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v1, p0, Lu/aly/as;->c:Ljava/util/Map;

    if-nez v1, :cond_1

    const-string v1, "null"

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 370
    :cond_1
    iget-object v1, p0, Lu/aly/as;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 373
    :goto_1
    invoke-virtual {p0}, Lu/aly/as;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "duration:"

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-wide v1, p0, Lu/aly/as;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 379
    :cond_2
    invoke-virtual {p0}, Lu/aly/as;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", "

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "acc:"

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget v1, p0, Lu/aly/as;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, ")"

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
