.class public Lu/aly/at;
.super Ljava/lang/Object;
.source "Error.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/at$c;,
        Lu/aly/at$d;,
        Lu/aly/at$a;,
        Lu/aly/at$b;,
        Lu/aly/at$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/at;",
        "Lu/aly/at$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/at$e;",
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
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Lu/aly/au;

.field private k:B

.field private l:[Lu/aly/at$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "Error"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/at;->e:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "ts"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/at;->f:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "context"

    const/4 v4, 0x2

    const/16 v5, 0xb

    invoke-direct {v0, v1, v5, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/at;->g:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "source"

    const/16 v6, 0x8

    const/4 v7, 0x3

    invoke-direct {v0, v1, v6, v7}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/at;->h:Lu/aly/db;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/at;->i:Ljava/util/Map;

    .line 41
    sget-object v0, Lu/aly/at;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v6, Lu/aly/at$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lu/aly/at$b;-><init>(Lu/aly/at$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/at;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v6, Lu/aly/at$d;

    invoke-direct {v6, v7}, Lu/aly/at$d;-><init>(Lu/aly/at$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/at$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 128
    sget-object v1, Lu/aly/at$e;->a:Lu/aly/at$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "ts"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v3, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lu/aly/at$e;->b:Lu/aly/at$e;

    new-instance v2, Lu/aly/ct;

    const-string v6, "context"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v6, v3, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lu/aly/at$e;->c:Lu/aly/at$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "source"

    new-instance v5, Lu/aly/cs;

    const-class v6, Lu/aly/au;

    const/16 v7, 0x10

    invoke-direct {v5, v7, v6}, Lu/aly/cs;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v4, v5}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/at;->d:Ljava/util/Map;

    .line 135
    const-class v0, Lu/aly/at;

    sget-object v1, Lu/aly/at;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-byte v0, p0, Lu/aly/at;->k:B

    const/4 v1, 0x1

    .line 124
    new-array v1, v1, [Lu/aly/at$e;

    sget-object v2, Lu/aly/at$e;->c:Lu/aly/at$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/at;->l:[Lu/aly/at$e;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lu/aly/at;-><init>()V

    .line 146
    iput-wide p1, p0, Lu/aly/at;->a:J

    const/4 p1, 0x1

    .line 147
    invoke-virtual {p0, p1}, Lu/aly/at;->b(Z)V

    .line 148
    iput-object p3, p0, Lu/aly/at;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu/aly/at;)V
    .locals 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-byte v0, p0, Lu/aly/at;->k:B

    const/4 v1, 0x1

    .line 124
    new-array v1, v1, [Lu/aly/at$e;

    sget-object v2, Lu/aly/at$e;->c:Lu/aly/at$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lu/aly/at;->l:[Lu/aly/at$e;

    .line 155
    iget-byte v0, p1, Lu/aly/at;->k:B

    iput-byte v0, p0, Lu/aly/at;->k:B

    .line 156
    iget-wide v0, p1, Lu/aly/at;->a:J

    iput-wide v0, p0, Lu/aly/at;->a:J

    .line 157
    invoke-virtual {p1}, Lu/aly/at;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p1, Lu/aly/at;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/at;->b:Ljava/lang/String;

    .line 160
    :cond_0
    invoke-virtual {p1}, Lu/aly/at;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object p1, p1, Lu/aly/at;->c:Lu/aly/au;

    iput-object p1, p0, Lu/aly/at;->c:Lu/aly/au;

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

    .line 318
    :try_start_0
    iput-byte v0, p0, Lu/aly/at;->k:B

    .line 319
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/at;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 321
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

    .line 309
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/at;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 311
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic n()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/at;->e:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic o()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/at;->f:Lu/aly/db;

    return-object v0
.end method

.method static synthetic p()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/at;->g:Lu/aly/db;

    return-object v0
.end method

.method static synthetic q()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/at;->h:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/at$e;
    .locals 0

    .line 257
    invoke-static {p1}, Lu/aly/at$e;->a(I)Lu/aly/at$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/at;
    .locals 1

    .line 166
    new-instance v0, Lu/aly/at;

    invoke-direct {v0, p0}, Lu/aly/at;-><init>(Lu/aly/at;)V

    return-object v0
.end method

.method public a(J)Lu/aly/at;
    .locals 0

    .line 182
    iput-wide p1, p0, Lu/aly/at;->a:J

    const/4 p1, 0x1

    .line 183
    invoke-virtual {p0, p1}, Lu/aly/at;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/at;
    .locals 0

    .line 205
    iput-object p1, p0, Lu/aly/at;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lu/aly/au;)Lu/aly/at;
    .locals 0

    .line 237
    iput-object p1, p0, Lu/aly/at;->c:Lu/aly/au;

    return-object p0
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 261
    sget-object v0, Lu/aly/at;->i:Ljava/util/Map;

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

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/at;->a(I)Lu/aly/at$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Lu/aly/at;->b(Z)V

    const-wide/16 v0, 0x0

    .line 172
    iput-wide v0, p0, Lu/aly/at;->a:J

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lu/aly/at;->b:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Lu/aly/at;->c:Lu/aly/au;

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 265
    sget-object v0, Lu/aly/at;->i:Ljava/util/Map;

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

    .line 197
    iget-byte v0, p0, Lu/aly/at;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/at;->k:B

    return-void
.end method

.method public c()J
    .locals 2

    .line 178
    iget-wide v0, p0, Lu/aly/at;->a:J

    return-wide v0
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 220
    iput-object p1, p0, Lu/aly/at;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 188
    iget-byte v0, p0, Lu/aly/at;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/at;->k:B

    return-void
.end method

.method public d(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 252
    iput-object p1, p0, Lu/aly/at;->c:Lu/aly/au;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    .line 193
    iget-byte v0, p0, Lu/aly/at;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lu/aly/at;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/at;->a()Lu/aly/at;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lu/aly/at;->b:Ljava/lang/String;

    return-void
.end method

.method public i()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lu/aly/at;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Lu/aly/au;
    .locals 1

    .line 229
    iget-object v0, p0, Lu/aly/at;->c:Lu/aly/au;

    return-object v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lu/aly/at;->c:Lu/aly/au;

    return-void
.end method

.method public l()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lu/aly/at;->c:Lu/aly/au;

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

    .line 301
    iget-object v0, p0, Lu/aly/at;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'context\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/at;->toString()Ljava/lang/String;

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

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ts:"

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-wide v1, p0, Lu/aly/at;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "context:"

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v1, p0, Lu/aly/at;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 281
    :cond_0
    iget-object v1, p0, Lu/aly/at;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :goto_0
    invoke-virtual {p0}, Lu/aly/at;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "source:"

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v1, p0, Lu/aly/at;->c:Lu/aly/au;

    if-nez v1, :cond_1

    const-string v1, "null"

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 290
    :cond_1
    iget-object v1, p0, Lu/aly/at;->c:Lu/aly/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const-string v1, ")"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
