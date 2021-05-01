.class public Lu/aly/be;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/be$c;,
        Lu/aly/be$d;,
        Lu/aly/be$a;,
        Lu/aly/be$b;,
        Lu/aly/be$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/be;",
        "Lu/aly/be$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/be$e;",
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
.field public a:D

.field public b:D

.field public c:J

.field private m:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "Location"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/be;->e:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "lat"

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->f:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "lng"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->g:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "ts"

    const/16 v4, 0xa

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->h:Lu/aly/db;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/be;->i:Ljava/util/Map;

    .line 41
    sget-object v0, Lu/aly/be;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v5, Lu/aly/be$b;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lu/aly/be$b;-><init>(Lu/aly/be$1;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/be;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v5, Lu/aly/be$d;

    invoke-direct {v5, v6}, Lu/aly/be$d;-><init>(Lu/aly/be$1;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/be$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 121
    sget-object v1, Lu/aly/be$e;->a:Lu/aly/be$e;

    new-instance v5, Lu/aly/ct;

    const-string v6, "lat"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v5, v6, v2, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lu/aly/be$e;->b:Lu/aly/be$e;

    new-instance v5, Lu/aly/ct;

    const-string v6, "lng"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v5, v6, v2, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lu/aly/be$e;->c:Lu/aly/be$e;

    new-instance v3, Lu/aly/ct;

    const-string v5, "ts"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v4}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v3, v5, v2, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/be;->d:Ljava/util/Map;

    .line 128
    const-class v0, Lu/aly/be;

    sget-object v1, Lu/aly/be;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-byte v0, p0, Lu/aly/be;->m:B

    return-void
.end method

.method public constructor <init>(DDJ)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lu/aly/be;-><init>()V

    .line 140
    iput-wide p1, p0, Lu/aly/be;->a:D

    const/4 p1, 0x1

    .line 141
    invoke-virtual {p0, p1}, Lu/aly/be;->a(Z)V

    .line 142
    iput-wide p3, p0, Lu/aly/be;->b:D

    .line 143
    invoke-virtual {p0, p1}, Lu/aly/be;->b(Z)V

    .line 144
    iput-wide p5, p0, Lu/aly/be;->c:J

    .line 145
    invoke-virtual {p0, p1}, Lu/aly/be;->c(Z)V

    return-void
.end method

.method public constructor <init>(Lu/aly/be;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-byte v0, p0, Lu/aly/be;->m:B

    .line 152
    iget-byte v0, p1, Lu/aly/be;->m:B

    iput-byte v0, p0, Lu/aly/be;->m:B

    .line 153
    iget-wide v0, p1, Lu/aly/be;->a:D

    iput-wide v0, p0, Lu/aly/be;->a:D

    .line 154
    iget-wide v0, p1, Lu/aly/be;->b:D

    iput-wide v0, p0, Lu/aly/be;->b:D

    .line 155
    iget-wide v0, p1, Lu/aly/be;->c:J

    iput-wide v0, p0, Lu/aly/be;->c:J

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

    .line 292
    :try_start_0
    iput-byte v0, p0, Lu/aly/be;->m:B

    .line 293
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/be;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 295
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

    .line 283
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/be;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 285
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic n()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/be;->e:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic o()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/be;->f:Lu/aly/db;

    return-object v0
.end method

.method static synthetic p()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/be;->g:Lu/aly/db;

    return-object v0
.end method

.method static synthetic q()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/be;->h:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/be$e;
    .locals 0

    .line 242
    invoke-static {p1}, Lu/aly/be$e;->a(I)Lu/aly/be$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/be;
    .locals 1

    .line 159
    new-instance v0, Lu/aly/be;

    invoke-direct {v0, p0}, Lu/aly/be;-><init>(Lu/aly/be;)V

    return-object v0
.end method

.method public a(D)Lu/aly/be;
    .locals 0

    .line 177
    iput-wide p1, p0, Lu/aly/be;->a:D

    const/4 p1, 0x1

    .line 178
    invoke-virtual {p0, p1}, Lu/aly/be;->a(Z)V

    return-object p0
.end method

.method public a(J)Lu/aly/be;
    .locals 0

    .line 223
    iput-wide p1, p0, Lu/aly/be;->c:J

    const/4 p1, 0x1

    .line 224
    invoke-virtual {p0, p1}, Lu/aly/be;->c(Z)V

    return-object p0
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 246
    sget-object v0, Lu/aly/be;->i:Ljava/util/Map;

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

    .line 192
    iget-byte v0, p0, Lu/aly/be;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/be;->m:B

    return-void
.end method

.method public b(D)Lu/aly/be;
    .locals 0

    .line 200
    iput-wide p1, p0, Lu/aly/be;->b:D

    const/4 p1, 0x1

    .line 201
    invoke-virtual {p0, p1}, Lu/aly/be;->b(Z)V

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/be;->a(I)Lu/aly/be$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0}, Lu/aly/be;->a(Z)V

    const-wide/16 v1, 0x0

    .line 165
    iput-wide v1, p0, Lu/aly/be;->a:D

    .line 166
    invoke-virtual {p0, v0}, Lu/aly/be;->b(Z)V

    .line 167
    iput-wide v1, p0, Lu/aly/be;->b:D

    .line 168
    invoke-virtual {p0, v0}, Lu/aly/be;->c(Z)V

    const-wide/16 v0, 0x0

    .line 169
    iput-wide v0, p0, Lu/aly/be;->c:J

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 250
    sget-object v0, Lu/aly/be;->i:Ljava/util/Map;

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

    .line 215
    iget-byte v0, p0, Lu/aly/be;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/be;->m:B

    return-void
.end method

.method public c()D
    .locals 2

    .line 173
    iget-wide v0, p0, Lu/aly/be;->a:D

    return-wide v0
.end method

.method public c(Z)V
    .locals 2

    .line 238
    iget-byte v0, p0, Lu/aly/be;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/be;->m:B

    return-void
.end method

.method public d()V
    .locals 2

    .line 183
    iget-byte v0, p0, Lu/aly/be;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/be;->m:B

    return-void
.end method

.method public e()Z
    .locals 2

    .line 188
    iget-byte v0, p0, Lu/aly/be;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()D
    .locals 2

    .line 196
    iget-wide v0, p0, Lu/aly/be;->b:D

    return-wide v0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/be;->a()Lu/aly/be;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 206
    iget-byte v0, p0, Lu/aly/be;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/be;->m:B

    return-void
.end method

.method public i()Z
    .locals 2

    .line 211
    iget-byte v0, p0, Lu/aly/be;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()J
    .locals 2

    .line 219
    iget-wide v0, p0, Lu/aly/be;->c:J

    return-wide v0
.end method

.method public k()V
    .locals 2

    .line 229
    iget-byte v0, p0, Lu/aly/be;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/be;->m:B

    return-void
.end method

.method public l()Z
    .locals 2

    .line 234
    iget-byte v0, p0, Lu/aly/be;->m:B

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
    .locals 3

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "lat:"

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-wide v1, p0, Lu/aly/be;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lng:"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-wide v1, p0, Lu/aly/be;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts:"

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-wide v1, p0, Lu/aly/be;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
