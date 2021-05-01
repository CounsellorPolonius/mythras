.class public Lu/aly/az;
.super Ljava/lang/Object;
.source "IdTracking.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/az$c;,
        Lu/aly/az$d;,
        Lu/aly/az$a;,
        Lu/aly/az$b;,
        Lu/aly/az$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/az;",
        "Lu/aly/az$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/az$e;",
            "Lu/aly/ct;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lu/aly/dl;

.field private static final f:Lu/aly/db;

.field private static final g:Lu/aly/db;

.field private static final h:Lu/aly/db;

.field private static final i:Ljava/util/Map;
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


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/ay;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field private j:[Lu/aly/az$e;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "IdTracking"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/az;->e:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "snapshots"

    const/4 v2, 0x1

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/az;->f:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "journals"

    const/16 v4, 0xf

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/az;->g:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "checksum"

    const/16 v6, 0xb

    const/4 v7, 0x3

    invoke-direct {v0, v1, v6, v7}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/az;->h:Lu/aly/db;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/az;->i:Ljava/util/Map;

    .line 41
    sget-object v0, Lu/aly/az;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v7, Lu/aly/az$b;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lu/aly/az$b;-><init>(Lu/aly/az$1;)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/az;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v7, Lu/aly/az$d;

    invoke-direct {v7, v8}, Lu/aly/az$d;-><init>(Lu/aly/az$1;)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/az$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 118
    sget-object v1, Lu/aly/az$e;->a:Lu/aly/az$e;

    new-instance v7, Lu/aly/ct;

    const-string v8, "snapshots"

    new-instance v9, Lu/aly/cw;

    new-instance v10, Lu/aly/cu;

    invoke-direct {v10, v6}, Lu/aly/cu;-><init>(B)V

    new-instance v11, Lu/aly/cy;

    const-class v12, Lu/aly/ay;

    const/16 v13, 0xc

    invoke-direct {v11, v13, v12}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v9, v3, v10, v11}, Lu/aly/cw;-><init>(BLu/aly/cu;Lu/aly/cu;)V

    invoke-direct {v7, v8, v2, v9}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lu/aly/az$e;->b:Lu/aly/az$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "journals"

    new-instance v7, Lu/aly/cv;

    new-instance v8, Lu/aly/cy;

    const-class v9, Lu/aly/ax;

    invoke-direct {v8, v13, v9}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v7, v4, v8}, Lu/aly/cv;-><init>(BLu/aly/cu;)V

    invoke-direct {v2, v3, v5, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lu/aly/az$e;->c:Lu/aly/az$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "checksum"

    new-instance v4, Lu/aly/cu;

    invoke-direct {v4, v6}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/az;->d:Ljava/util/Map;

    .line 128
    const-class v0, Lu/aly/az;

    sget-object v1, Lu/aly/az;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 114
    new-array v0, v0, [Lu/aly/az$e;

    sget-object v1, Lu/aly/az$e;->b:Lu/aly/az$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/az$e;->c:Lu/aly/az$e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/az;->j:[Lu/aly/az$e;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/ay;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Lu/aly/az;-><init>()V

    .line 138
    iput-object p1, p0, Lu/aly/az;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lu/aly/az;)V
    .locals 5

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 114
    new-array v0, v0, [Lu/aly/az$e;

    sget-object v1, Lu/aly/az$e;->b:Lu/aly/az$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/az$e;->c:Lu/aly/az$e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/az;->j:[Lu/aly/az$e;

    .line 145
    invoke-virtual {p1}, Lu/aly/az;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    iget-object v1, p1, Lu/aly/az;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 150
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/ay;

    .line 154
    new-instance v4, Lu/aly/ay;

    invoke-direct {v4, v2}, Lu/aly/ay;-><init>(Lu/aly/ay;)V

    .line 156
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_0
    iput-object v0, p0, Lu/aly/az;->a:Ljava/util/Map;

    .line 160
    :cond_1
    invoke-virtual {p1}, Lu/aly/az;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget-object v1, p1, Lu/aly/az;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/ax;

    .line 163
    new-instance v3, Lu/aly/ax;

    invoke-direct {v3, v2}, Lu/aly/ax;-><init>(Lu/aly/ax;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 165
    :cond_2
    iput-object v0, p0, Lu/aly/az;->b:Ljava/util/List;

    .line 167
    :cond_3
    invoke-virtual {p1}, Lu/aly/az;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    iget-object p1, p1, Lu/aly/az;->c:Ljava/lang/String;

    iput-object p1, p0, Lu/aly/az;->c:Ljava/lang/String;

    :cond_4
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

    .line 347
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/az;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 349
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

    .line 339
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/az;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 341
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic q()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/az;->e:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic r()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/az;->f:Lu/aly/db;

    return-object v0
.end method

.method static synthetic s()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/az;->g:Lu/aly/db;

    return-object v0
.end method

.method static synthetic t()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/az;->h:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/az$e;
    .locals 0

    .line 282
    invoke-static {p1}, Lu/aly/az$e;->a(I)Lu/aly/az$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/az;
    .locals 1

    .line 173
    new-instance v0, Lu/aly/az;

    invoke-direct {v0, p0}, Lu/aly/az;-><init>(Lu/aly/az;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lu/aly/az;
    .locals 0

    .line 262
    iput-object p1, p0, Lu/aly/az;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lu/aly/az;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/aly/ax;",
            ">;)",
            "Lu/aly/az;"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lu/aly/az;->b:Ljava/util/List;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lu/aly/az;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/ay;",
            ">;)",
            "Lu/aly/az;"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lu/aly/az;->a:Ljava/util/Map;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lu/aly/ay;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lu/aly/az;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/az;->a:Ljava/util/Map;

    .line 191
    :cond_0
    iget-object v0, p0, Lu/aly/az;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lu/aly/ax;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lu/aly/az;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/az;->b:Ljava/util/List;

    .line 230
    :cond_0
    iget-object v0, p0, Lu/aly/az;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 286
    sget-object v0, Lu/aly/az;->i:Ljava/util/Map;

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

    .line 214
    iput-object p1, p0, Lu/aly/az;->a:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/az;->a(I)Lu/aly/az$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lu/aly/az;->a:Ljava/util/Map;

    .line 179
    iput-object v0, p0, Lu/aly/az;->b:Ljava/util/List;

    .line 180
    iput-object v0, p0, Lu/aly/az;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 290
    sget-object v0, Lu/aly/az;->i:Ljava/util/Map;

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

    .line 253
    iput-object p1, p0, Lu/aly/az;->b:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 184
    iget-object v0, p0, Lu/aly/az;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/az;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 277
    iput-object p1, p0, Lu/aly/az;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/ay;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lu/aly/az;->a:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lu/aly/az;->a:Ljava/util/Map;

    return-void
.end method

.method public f()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lu/aly/az;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/az;->a()Lu/aly/az;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 219
    iget-object v0, p0, Lu/aly/az;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/az;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lu/aly/az;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/az;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lu/aly/az;->b:Ljava/util/List;

    return-object v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lu/aly/az;->b:Ljava/util/List;

    return-void
.end method

.method public l()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lu/aly/az;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lu/aly/az;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lu/aly/az;->c:Ljava/lang/String;

    return-void
.end method

.method public o()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lu/aly/az;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lu/aly/az;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'snapshots\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/az;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdTracking("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "snapshots:"

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-object v1, p0, Lu/aly/az;->a:Ljava/util/Map;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 302
    :cond_0
    iget-object v1, p0, Lu/aly/az;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    :goto_0
    invoke-virtual {p0}, Lu/aly/az;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "journals:"

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v1, p0, Lu/aly/az;->b:Ljava/util/List;

    if-nez v1, :cond_1

    const-string v1, "null"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 311
    :cond_1
    iget-object v1, p0, Lu/aly/az;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lu/aly/az;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", "

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Lu/aly/az;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "null"

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 321
    :cond_3
    iget-object v1, p0, Lu/aly/az;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    const-string v1, ")"

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
