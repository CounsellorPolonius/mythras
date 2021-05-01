.class public Lu/aly/bb;
.super Ljava/lang/Object;
.source "ImprintValue.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bb$c;,
        Lu/aly/bb$d;,
        Lu/aly/bb$a;,
        Lu/aly/bb$b;,
        Lu/aly/bb$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/bb;",
        "Lu/aly/bb$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/bb$e;",
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

.field private static final j:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field private k:B

.field private l:[Lu/aly/bb$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "ImprintValue"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bb;->e:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "value"

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bb;->f:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "ts"

    const/4 v4, 0x2

    const/16 v5, 0xa

    invoke-direct {v0, v1, v5, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bb;->g:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "guid"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v3, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bb;->h:Lu/aly/db;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bb;->i:Ljava/util/Map;

    .line 41
    sget-object v0, Lu/aly/bb;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v6, Lu/aly/bb$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lu/aly/bb$b;-><init>(Lu/aly/bb$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/bb;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v6, Lu/aly/bb$d;

    invoke-direct {v6, v7}, Lu/aly/bb$d;-><init>(Lu/aly/bb$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bb$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 120
    sget-object v1, Lu/aly/bb$e;->a:Lu/aly/bb$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "value"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v4, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lu/aly/bb$e;->b:Lu/aly/bb$e;

    new-instance v4, Lu/aly/ct;

    const-string v6, "ts"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v6, v2, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lu/aly/bb$e;->c:Lu/aly/bb$e;

    new-instance v4, Lu/aly/ct;

    const-string v5, "guid"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v5, v2, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bb;->d:Ljava/util/Map;

    .line 127
    const-class v0, Lu/aly/bb;

    sget-object v1, Lu/aly/bb;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-byte v0, p0, Lu/aly/bb;->k:B

    const/4 v1, 0x1

    .line 116
    new-array v1, v1, [Lu/aly/bb$e;

    sget-object v2, Lu/aly/bb$e;->a:Lu/aly/bb$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/bb;->l:[Lu/aly/bb$e;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lu/aly/bb;-><init>()V

    .line 138
    iput-wide p1, p0, Lu/aly/bb;->b:J

    const/4 p1, 0x1

    .line 139
    invoke-virtual {p0, p1}, Lu/aly/bb;->b(Z)V

    .line 140
    iput-object p3, p0, Lu/aly/bb;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu/aly/bb;)V
    .locals 3

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-byte v0, p0, Lu/aly/bb;->k:B

    const/4 v1, 0x1

    .line 116
    new-array v1, v1, [Lu/aly/bb$e;

    sget-object v2, Lu/aly/bb$e;->a:Lu/aly/bb$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/bb;->l:[Lu/aly/bb$e;

    .line 147
    iget-byte v0, p1, Lu/aly/bb;->k:B

    iput-byte v0, p0, Lu/aly/bb;->k:B

    .line 148
    invoke-virtual {p1}, Lu/aly/bb;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p1, Lu/aly/bb;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bb;->a:Ljava/lang/String;

    .line 151
    :cond_0
    iget-wide v0, p1, Lu/aly/bb;->b:J

    iput-wide v0, p0, Lu/aly/bb;->b:J

    .line 152
    invoke-virtual {p1}, Lu/aly/bb;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object p1, p1, Lu/aly/bb;->c:Ljava/lang/String;

    iput-object p1, p0, Lu/aly/bb;->c:Ljava/lang/String;

    :cond_1
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

    .line 302
    :try_start_0
    iput-byte v0, p0, Lu/aly/bb;->k:B

    .line 303
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bb;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 305
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

    .line 293
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bb;->b(Lu/aly/dg;)V
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

.method static synthetic n()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bb;->e:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic o()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bb;->f:Lu/aly/db;

    return-object v0
.end method

.method static synthetic p()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bb;->g:Lu/aly/db;

    return-object v0
.end method

.method static synthetic q()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bb;->h:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/bb$e;
    .locals 0

    .line 241
    invoke-static {p1}, Lu/aly/bb$e;->a(I)Lu/aly/bb$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/bb;
    .locals 1

    .line 158
    new-instance v0, Lu/aly/bb;

    invoke-direct {v0, p0}, Lu/aly/bb;-><init>(Lu/aly/bb;)V

    return-object v0
.end method

.method public a(J)Lu/aly/bb;
    .locals 0

    .line 198
    iput-wide p1, p0, Lu/aly/bb;->b:J

    const/4 p1, 0x1

    .line 199
    invoke-virtual {p0, p1}, Lu/aly/bb;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bb;
    .locals 0

    .line 174
    iput-object p1, p0, Lu/aly/bb;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 245
    sget-object v0, Lu/aly/bb;->i:Ljava/util/Map;

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

    .line 189
    iput-object p1, p0, Lu/aly/bb;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/bb;
    .locals 0

    .line 221
    iput-object p1, p0, Lu/aly/bb;->c:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/bb;->a(I)Lu/aly/bb$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lu/aly/bb;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0, v1}, Lu/aly/bb;->b(Z)V

    const-wide/16 v1, 0x0

    .line 165
    iput-wide v1, p0, Lu/aly/bb;->b:J

    .line 166
    iput-object v0, p0, Lu/aly/bb;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 249
    sget-object v0, Lu/aly/bb;->i:Ljava/util/Map;

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

    .line 213
    iget-byte v0, p0, Lu/aly/bb;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bb;->k:B

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lu/aly/bb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 236
    iput-object p1, p0, Lu/aly/bb;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lu/aly/bb;->a:Ljava/lang/String;

    return-void
.end method

.method public e()Z
    .locals 1

    .line 184
    iget-object v0, p0, Lu/aly/bb;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lu/aly/bb;->b:J

    return-wide v0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/bb;->a()Lu/aly/bb;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 204
    iget-byte v0, p0, Lu/aly/bb;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bb;->k:B

    return-void
.end method

.method public i()Z
    .locals 2

    .line 209
    iget-byte v0, p0, Lu/aly/bb;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lu/aly/bb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lu/aly/bb;->c:Ljava/lang/String;

    return-void
.end method

.method public l()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lu/aly/bb;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lu/aly/bb;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bb;->toString()Ljava/lang/String;

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
    .locals 3

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImprintValue("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lu/aly/bb;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "value:"

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Lu/aly/bb;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 262
    :cond_0
    iget-object v1, p0, Lu/aly/bb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    const-string v1, ", "

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "ts:"

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-wide v1, p0, Lu/aly/bb;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "guid:"

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v1, p0, Lu/aly/bb;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "null"

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 275
    :cond_3
    iget-object v1, p0, Lu/aly/bb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ")"

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
