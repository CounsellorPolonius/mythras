.class public Lu/aly/ap;
.super Ljava/lang/Object;
.source "ClientStats.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/ap$c;,
        Lu/aly/ap$d;,
        Lu/aly/ap$a;,
        Lu/aly/ap$b;,
        Lu/aly/ap$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/ap;",
        "Lu/aly/ap$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/ap$e;",
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

.field private static final j:I = 0x0

.field private static final k:I = 0x1

.field private static final l:I = 0x2


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private m:B

.field private n:[Lu/aly/ap$e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "ClientStats"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ap;->e:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "successful_requests"

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ap;->f:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "failed_requests"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ap;->g:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "last_request_spent_ms"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ap;->h:Lu/aly/db;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ap;->i:Ljava/util/Map;

    .line 41
    sget-object v0, Lu/aly/ap;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v5, Lu/aly/ap$b;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lu/aly/ap$b;-><init>(Lu/aly/ap$1;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/ap;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v5, Lu/aly/ap$d;

    invoke-direct {v5, v6}, Lu/aly/ap$d;-><init>(Lu/aly/ap$1;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ap$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 122
    sget-object v1, Lu/aly/ap$e;->a:Lu/aly/ap$e;

    new-instance v5, Lu/aly/ct;

    const-string v6, "successful_requests"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v5, v6, v2, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lu/aly/ap$e;->b:Lu/aly/ap$e;

    new-instance v5, Lu/aly/ct;

    const-string v6, "failed_requests"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v5, v6, v2, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lu/aly/ap$e;->c:Lu/aly/ap$e;

    new-instance v2, Lu/aly/ct;

    const-string v5, "last_request_spent_ms"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v5, v4, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ap;->d:Ljava/util/Map;

    .line 129
    const-class v0, Lu/aly/ap;

    sget-object v1, Lu/aly/ap;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-byte v0, p0, Lu/aly/ap;->m:B

    const/4 v1, 0x1

    .line 118
    new-array v1, v1, [Lu/aly/ap$e;

    sget-object v2, Lu/aly/ap$e;->c:Lu/aly/ap$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/ap;->n:[Lu/aly/ap$e;

    .line 133
    iput v0, p0, Lu/aly/ap;->a:I

    .line 135
    iput v0, p0, Lu/aly/ap;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lu/aly/ap;-><init>()V

    .line 144
    iput p1, p0, Lu/aly/ap;->a:I

    const/4 p1, 0x1

    .line 145
    invoke-virtual {p0, p1}, Lu/aly/ap;->a(Z)V

    .line 146
    iput p2, p0, Lu/aly/ap;->b:I

    .line 147
    invoke-virtual {p0, p1}, Lu/aly/ap;->b(Z)V

    return-void
.end method

.method public constructor <init>(Lu/aly/ap;)V
    .locals 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-byte v0, p0, Lu/aly/ap;->m:B

    const/4 v1, 0x1

    .line 118
    new-array v1, v1, [Lu/aly/ap$e;

    sget-object v2, Lu/aly/ap$e;->c:Lu/aly/ap$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/ap;->n:[Lu/aly/ap$e;

    .line 154
    iget-byte v0, p1, Lu/aly/ap;->m:B

    iput-byte v0, p0, Lu/aly/ap;->m:B

    .line 155
    iget v0, p1, Lu/aly/ap;->a:I

    iput v0, p0, Lu/aly/ap;->a:I

    .line 156
    iget v0, p1, Lu/aly/ap;->b:I

    iput v0, p0, Lu/aly/ap;->b:I

    .line 157
    iget p1, p1, Lu/aly/ap;->c:I

    iput p1, p0, Lu/aly/ap;->c:I

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

    .line 295
    :try_start_0
    iput-byte v0, p0, Lu/aly/ap;->m:B

    .line 296
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/ap;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 298
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

    .line 286
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/ap;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 288
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic n()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ap;->e:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic o()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ap;->f:Lu/aly/db;

    return-object v0
.end method

.method static synthetic p()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ap;->g:Lu/aly/db;

    return-object v0
.end method

.method static synthetic q()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ap;->h:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/ap;
    .locals 1

    .line 161
    new-instance v0, Lu/aly/ap;

    invoke-direct {v0, p0}, Lu/aly/ap;-><init>(Lu/aly/ap;)V

    return-object v0
.end method

.method public a(I)Lu/aly/ap;
    .locals 0

    .line 179
    iput p1, p0, Lu/aly/ap;->a:I

    const/4 p1, 0x1

    .line 180
    invoke-virtual {p0, p1}, Lu/aly/ap;->a(Z)V

    return-object p0
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 248
    sget-object v0, Lu/aly/ap;->i:Ljava/util/Map;

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

    .line 194
    iget-byte v0, p0, Lu/aly/ap;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/ap;->m:B

    return-void
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/ap;->e(I)Lu/aly/ap$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lu/aly/ap;->a:I

    .line 168
    iput v0, p0, Lu/aly/ap;->b:I

    .line 170
    invoke-virtual {p0, v0}, Lu/aly/ap;->c(Z)V

    .line 171
    iput v0, p0, Lu/aly/ap;->c:I

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 252
    sget-object v0, Lu/aly/ap;->i:Ljava/util/Map;

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
    .locals 2

    .line 217
    iget-byte v0, p0, Lu/aly/ap;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/ap;->m:B

    return-void
.end method

.method public c()I
    .locals 1

    .line 175
    iget v0, p0, Lu/aly/ap;->a:I

    return v0
.end method

.method public c(I)Lu/aly/ap;
    .locals 0

    .line 202
    iput p1, p0, Lu/aly/ap;->b:I

    const/4 p1, 0x1

    .line 203
    invoke-virtual {p0, p1}, Lu/aly/ap;->b(Z)V

    return-object p0
.end method

.method public c(Z)V
    .locals 2

    .line 240
    iget-byte v0, p0, Lu/aly/ap;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/ap;->m:B

    return-void
.end method

.method public d(I)Lu/aly/ap;
    .locals 0

    .line 225
    iput p1, p0, Lu/aly/ap;->c:I

    const/4 p1, 0x1

    .line 226
    invoke-virtual {p0, p1}, Lu/aly/ap;->c(Z)V

    return-object p0
.end method

.method public d()V
    .locals 2

    .line 185
    iget-byte v0, p0, Lu/aly/ap;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ap;->m:B

    return-void
.end method

.method public e(I)Lu/aly/ap$e;
    .locals 0

    .line 244
    invoke-static {p1}, Lu/aly/ap$e;->a(I)Lu/aly/ap$e;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 2

    .line 190
    iget-byte v0, p0, Lu/aly/ap;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 198
    iget v0, p0, Lu/aly/ap;->b:I

    return v0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/ap;->a()Lu/aly/ap;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 208
    iget-byte v0, p0, Lu/aly/ap;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ap;->m:B

    return-void
.end method

.method public i()Z
    .locals 2

    .line 213
    iget-byte v0, p0, Lu/aly/ap;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .line 221
    iget v0, p0, Lu/aly/ap;->c:I

    return v0
.end method

.method public k()V
    .locals 2

    .line 231
    iget-byte v0, p0, Lu/aly/ap;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ap;->m:B

    return-void
.end method

.method public l()Z
    .locals 2

    .line 236
    iget-byte v0, p0, Lu/aly/ap;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientStats("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "successful_requests:"

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget v1, p0, Lu/aly/ap;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "failed_requests:"

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget v1, p0, Lu/aly/ap;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Lu/aly/ap;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "last_request_spent_ms:"

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget v1, p0, Lu/aly/ap;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ")"

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
