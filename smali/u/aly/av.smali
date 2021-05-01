.class public Lu/aly/av;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/av$c;,
        Lu/aly/av$d;,
        Lu/aly/av$a;,
        Lu/aly/av$b;,
        Lu/aly/av$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/av;",
        "Lu/aly/av$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/av$e;",
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
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/bh;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:I

.field public e:J

.field private q:B

.field private r:[Lu/aly/av$e;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "Event"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/av;->g:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "name"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/av;->h:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "properties"

    const/16 v4, 0xd

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/av;->i:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "duration"

    const/16 v6, 0xa

    const/4 v7, 0x3

    invoke-direct {v0, v1, v6, v7}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/av;->j:Lu/aly/db;

    .line 38
    new-instance v0, Lu/aly/db;

    const-string v1, "acc"

    const/16 v7, 0x8

    const/4 v8, 0x4

    invoke-direct {v0, v1, v7, v8}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/av;->k:Lu/aly/db;

    .line 39
    new-instance v0, Lu/aly/db;

    const-string v1, "ts"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v6, v8}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/av;->l:Lu/aly/db;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/av;->m:Ljava/util/Map;

    .line 43
    sget-object v0, Lu/aly/av;->m:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v8, Lu/aly/av$b;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lu/aly/av$b;-><init>(Lu/aly/av$1;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lu/aly/av;->m:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v8, Lu/aly/av$d;

    invoke-direct {v8, v9}, Lu/aly/av$d;-><init>(Lu/aly/av$1;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/av$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 132
    sget-object v1, Lu/aly/av$e;->a:Lu/aly/av$e;

    new-instance v8, Lu/aly/ct;

    const-string v9, "name"

    new-instance v10, Lu/aly/cu;

    invoke-direct {v10, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v8, v9, v3, v10}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lu/aly/av$e;->b:Lu/aly/av$e;

    new-instance v8, Lu/aly/ct;

    const-string v9, "properties"

    new-instance v10, Lu/aly/cw;

    new-instance v11, Lu/aly/cu;

    invoke-direct {v11, v2}, Lu/aly/cu;-><init>(B)V

    new-instance v2, Lu/aly/cy;

    const-class v12, Lu/aly/bh;

    const/16 v13, 0xc

    invoke-direct {v2, v13, v12}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v10, v4, v11, v2}, Lu/aly/cw;-><init>(BLu/aly/cu;Lu/aly/cu;)V

    invoke-direct {v8, v9, v3, v10}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lu/aly/av$e;->c:Lu/aly/av$e;

    new-instance v2, Lu/aly/ct;

    const-string v4, "duration"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v6}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v4, v5, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lu/aly/av$e;->d:Lu/aly/av$e;

    new-instance v2, Lu/aly/ct;

    const-string v4, "acc"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v7}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v4, v5, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lu/aly/av$e;->e:Lu/aly/av$e;

    new-instance v2, Lu/aly/ct;

    const-string v4, "ts"

    new-instance v5, Lu/aly/cu;

    invoke-direct {v5, v6}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v4, v3, v5}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/av;->f:Ljava/util/Map;

    .line 145
    const-class v0, Lu/aly/av;

    sget-object v1, Lu/aly/av;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput-byte v0, p0, Lu/aly/av;->q:B

    const/4 v1, 0x2

    .line 128
    new-array v1, v1, [Lu/aly/av$e;

    sget-object v2, Lu/aly/av$e;->c:Lu/aly/av$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/av$e;->d:Lu/aly/av$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/av;->r:[Lu/aly/av$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/bh;",
            ">;J)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lu/aly/av;-><init>()V

    .line 157
    iput-object p1, p0, Lu/aly/av;->a:Ljava/lang/String;

    .line 158
    iput-object p2, p0, Lu/aly/av;->b:Ljava/util/Map;

    .line 159
    iput-wide p3, p0, Lu/aly/av;->e:J

    const/4 p1, 0x1

    .line 160
    invoke-virtual {p0, p1}, Lu/aly/av;->e(Z)V

    return-void
.end method

.method public constructor <init>(Lu/aly/av;)V
    .locals 5

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput-byte v0, p0, Lu/aly/av;->q:B

    const/4 v1, 0x2

    .line 128
    new-array v1, v1, [Lu/aly/av$e;

    sget-object v2, Lu/aly/av$e;->c:Lu/aly/av$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/av$e;->d:Lu/aly/av$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/av;->r:[Lu/aly/av$e;

    .line 167
    iget-byte v0, p1, Lu/aly/av;->q:B

    iput-byte v0, p0, Lu/aly/av;->q:B

    .line 168
    invoke-virtual {p1}, Lu/aly/av;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p1, Lu/aly/av;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/av;->a:Ljava/lang/String;

    .line 171
    :cond_0
    invoke-virtual {p1}, Lu/aly/av;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    iget-object v1, p1, Lu/aly/av;->b:Ljava/util/Map;

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

    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 176
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/bh;

    .line 180
    new-instance v4, Lu/aly/bh;

    invoke-direct {v4, v2}, Lu/aly/bh;-><init>(Lu/aly/bh;)V

    .line 182
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 184
    :cond_1
    iput-object v0, p0, Lu/aly/av;->b:Ljava/util/Map;

    .line 186
    :cond_2
    iget-wide v0, p1, Lu/aly/av;->c:J

    iput-wide v0, p0, Lu/aly/av;->c:J

    .line 187
    iget v0, p1, Lu/aly/av;->d:I

    iput v0, p0, Lu/aly/av;->d:I

    .line 188
    iget-wide v0, p1, Lu/aly/av;->e:J

    iput-wide v0, p0, Lu/aly/av;->e:J

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

    .line 410
    :try_start_0
    iput-byte v0, p0, Lu/aly/av;->q:B

    .line 411
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/av;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 413
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

    .line 401
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/av;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 403
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic u()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/av;->g:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic v()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/av;->h:Lu/aly/db;

    return-object v0
.end method

.method static synthetic w()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/av;->i:Lu/aly/db;

    return-object v0
.end method

.method static synthetic x()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/av;->j:Lu/aly/db;

    return-object v0
.end method

.method static synthetic y()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/av;->k:Lu/aly/db;

    return-object v0
.end method

.method static synthetic z()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/av;->l:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/av;
    .locals 1

    .line 192
    new-instance v0, Lu/aly/av;

    invoke-direct {v0, p0}, Lu/aly/av;-><init>(Lu/aly/av;)V

    return-object v0
.end method

.method public a(I)Lu/aly/av;
    .locals 0

    .line 294
    iput p1, p0, Lu/aly/av;->d:I

    const/4 p1, 0x1

    .line 295
    invoke-virtual {p0, p1}, Lu/aly/av;->d(Z)V

    return-object p0
.end method

.method public a(J)Lu/aly/av;
    .locals 0

    .line 271
    iput-wide p1, p0, Lu/aly/av;->c:J

    const/4 p1, 0x1

    .line 272
    invoke-virtual {p0, p1}, Lu/aly/av;->c(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/av;
    .locals 0

    .line 212
    iput-object p1, p0, Lu/aly/av;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lu/aly/av;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/bh;",
            ">;)",
            "Lu/aly/av;"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lu/aly/av;->b:Ljava/util/Map;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lu/aly/bh;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lu/aly/av;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/av;->b:Ljava/util/Map;

    .line 239
    :cond_0
    iget-object v0, p0, Lu/aly/av;->b:Ljava/util/Map;

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

    .line 340
    sget-object v0, Lu/aly/av;->m:Ljava/util/Map;

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
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lu/aly/av;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(J)Lu/aly/av;
    .locals 0

    .line 317
    iput-wide p1, p0, Lu/aly/av;->e:J

    const/4 p1, 0x1

    .line 318
    invoke-virtual {p0, p1}, Lu/aly/av;->e(Z)V

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/av;->c(I)Lu/aly/av$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lu/aly/av;->a:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Lu/aly/av;->b:Ljava/util/Map;

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0}, Lu/aly/av;->c(Z)V

    const-wide/16 v1, 0x0

    .line 200
    iput-wide v1, p0, Lu/aly/av;->c:J

    .line 201
    invoke-virtual {p0, v0}, Lu/aly/av;->d(Z)V

    .line 202
    iput v0, p0, Lu/aly/av;->d:I

    .line 203
    invoke-virtual {p0, v0}, Lu/aly/av;->e(Z)V

    .line 204
    iput-wide v1, p0, Lu/aly/av;->e:J

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 344
    sget-object v0, Lu/aly/av;->m:Ljava/util/Map;

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

    .line 262
    iput-object p1, p0, Lu/aly/av;->b:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lu/aly/av;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lu/aly/av$e;
    .locals 0

    .line 336
    invoke-static {p1}, Lu/aly/av$e;->a(I)Lu/aly/av$e;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)V
    .locals 2

    .line 286
    iget-byte v0, p0, Lu/aly/av;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/av;->q:B

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lu/aly/av;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 309
    iget-byte v0, p0, Lu/aly/av;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/av;->q:B

    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 332
    iget-byte v0, p0, Lu/aly/av;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/av;->q:B

    return-void
.end method

.method public e()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lu/aly/av;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()I
    .locals 1

    .line 232
    iget-object v0, p0, Lu/aly/av;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/av;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/av;->a()Lu/aly/av;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/bh;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lu/aly/av;->b:Ljava/util/Map;

    return-object v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lu/aly/av;->b:Ljava/util/Map;

    return-void
.end method

.method public j()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lu/aly/av;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()J
    .locals 2

    .line 267
    iget-wide v0, p0, Lu/aly/av;->c:J

    return-wide v0
.end method

.method public l()V
    .locals 2

    .line 277
    iget-byte v0, p0, Lu/aly/av;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/av;->q:B

    return-void
.end method

.method public m()Z
    .locals 2

    .line 282
    iget-byte v0, p0, Lu/aly/av;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .line 290
    iget v0, p0, Lu/aly/av;->d:I

    return v0
.end method

.method public o()V
    .locals 2

    .line 300
    iget-byte v0, p0, Lu/aly/av;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/av;->q:B

    return-void
.end method

.method public p()Z
    .locals 2

    .line 305
    iget-byte v0, p0, Lu/aly/av;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    .line 313
    iget-wide v0, p0, Lu/aly/av;->e:J

    return-wide v0
.end method

.method public r()V
    .locals 2

    .line 323
    iget-byte v0, p0, Lu/aly/av;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/av;->q:B

    return-void
.end method

.method public s()Z
    .locals 2

    .line 328
    iget-byte v0, p0, Lu/aly/av;->q:B

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

    .line 389
    iget-object v0, p0, Lu/aly/av;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/av;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    iget-object v0, p0, Lu/aly/av;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 393
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'properties\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/av;->toString()Ljava/lang/String;

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

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "name:"

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v1, p0, Lu/aly/av;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 356
    :cond_0
    iget-object v1, p0, Lu/aly/av;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "properties:"

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v1, p0, Lu/aly/av;->b:Ljava/util/Map;

    if-nez v1, :cond_1

    const-string v1, "null"

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 364
    :cond_1
    iget-object v1, p0, Lu/aly/av;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    :goto_1
    invoke-virtual {p0}, Lu/aly/av;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "duration:"

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-wide v1, p0, Lu/aly/av;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 373
    :cond_2
    invoke-virtual {p0}, Lu/aly/av;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", "

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "acc:"

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget v1, p0, Lu/aly/av;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, ", "

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts:"

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-wide v1, p0, Lu/aly/av;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
