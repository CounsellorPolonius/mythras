.class public Lu/aly/ba;
.super Ljava/lang/Object;
.source "Imprint.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/ba$c;,
        Lu/aly/ba$d;,
        Lu/aly/ba$a;,
        Lu/aly/ba$b;,
        Lu/aly/ba$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/ba;",
        "Lu/aly/ba$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/ba$e;",
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
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/bb;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/lang/String;

.field private k:B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "Imprint"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ba;->e:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "property"

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ba;->f:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "version"

    const/16 v4, 0x8

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ba;->g:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "checksum"

    const/16 v5, 0xb

    const/4 v6, 0x3

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ba;->h:Lu/aly/db;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ba;->i:Ljava/util/Map;

    .line 41
    sget-object v0, Lu/aly/ba;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v6, Lu/aly/ba$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lu/aly/ba$b;-><init>(Lu/aly/ba$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/ba;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v6, Lu/aly/ba$d;

    invoke-direct {v6, v7}, Lu/aly/ba$d;-><init>(Lu/aly/ba$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ba$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 119
    sget-object v1, Lu/aly/ba$e;->a:Lu/aly/ba$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "property"

    new-instance v8, Lu/aly/cw;

    new-instance v9, Lu/aly/cu;

    invoke-direct {v9, v5}, Lu/aly/cu;-><init>(B)V

    new-instance v10, Lu/aly/cy;

    const-class v11, Lu/aly/bb;

    const/16 v12, 0xc

    invoke-direct {v10, v12, v11}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v8, v2, v9, v10}, Lu/aly/cw;-><init>(BLu/aly/cu;Lu/aly/cu;)V

    invoke-direct {v6, v7, v3, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lu/aly/ba$e;->b:Lu/aly/ba$e;

    new-instance v2, Lu/aly/ct;

    const-string v6, "version"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v4}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v6, v3, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lu/aly/ba$e;->c:Lu/aly/ba$e;

    new-instance v2, Lu/aly/ct;

    const-string v4, "checksum"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v4, v3, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ba;->d:Ljava/util/Map;

    .line 128
    const-class v0, Lu/aly/ba;

    sget-object v1, Lu/aly/ba;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-byte v0, p0, Lu/aly/ba;->k:B

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/bb;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lu/aly/ba;-><init>()V

    .line 140
    iput-object p1, p0, Lu/aly/ba;->a:Ljava/util/Map;

    .line 141
    iput p2, p0, Lu/aly/ba;->b:I

    const/4 p1, 0x1

    .line 142
    invoke-virtual {p0, p1}, Lu/aly/ba;->b(Z)V

    .line 143
    iput-object p3, p0, Lu/aly/ba;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu/aly/ba;)V
    .locals 5

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-byte v0, p0, Lu/aly/ba;->k:B

    .line 150
    iget-byte v0, p1, Lu/aly/ba;->k:B

    iput-byte v0, p0, Lu/aly/ba;->k:B

    .line 151
    invoke-virtual {p1}, Lu/aly/ba;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    iget-object v1, p1, Lu/aly/ba;->a:Ljava/util/Map;

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

    .line 155
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 156
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/bb;

    .line 160
    new-instance v4, Lu/aly/bb;

    invoke-direct {v4, v2}, Lu/aly/bb;-><init>(Lu/aly/bb;)V

    .line 162
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    :cond_0
    iput-object v0, p0, Lu/aly/ba;->a:Ljava/util/Map;

    .line 166
    :cond_1
    iget v0, p1, Lu/aly/ba;->b:I

    iput v0, p0, Lu/aly/ba;->b:I

    .line 167
    invoke-virtual {p1}, Lu/aly/ba;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iget-object p1, p1, Lu/aly/ba;->c:Ljava/lang/String;

    iput-object p1, p0, Lu/aly/ba;->c:Ljava/lang/String;

    :cond_2
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

    .line 329
    :try_start_0
    iput-byte v0, p0, Lu/aly/ba;->k:B

    .line 330
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/ba;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 332
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

    .line 320
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/ba;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 322
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic o()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ba;->e:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic p()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ba;->f:Lu/aly/db;

    return-object v0
.end method

.method static synthetic q()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ba;->g:Lu/aly/db;

    return-object v0
.end method

.method static synthetic r()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ba;->h:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/ba;
    .locals 1

    .line 173
    new-instance v0, Lu/aly/ba;

    invoke-direct {v0, p0}, Lu/aly/ba;-><init>(Lu/aly/ba;)V

    return-object v0
.end method

.method public a(I)Lu/aly/ba;
    .locals 0

    .line 224
    iput p1, p0, Lu/aly/ba;->b:I

    const/4 p1, 0x1

    .line 225
    invoke-virtual {p0, p1}, Lu/aly/ba;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/ba;
    .locals 0

    .line 247
    iput-object p1, p0, Lu/aly/ba;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lu/aly/ba;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/bb;",
            ">;)",
            "Lu/aly/ba;"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lu/aly/ba;->a:Ljava/util/Map;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lu/aly/bb;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lu/aly/ba;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/ba;->a:Ljava/util/Map;

    .line 192
    :cond_0
    iget-object v0, p0, Lu/aly/ba;->a:Ljava/util/Map;

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

    .line 271
    sget-object v0, Lu/aly/ba;->i:Ljava/util/Map;

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

    .line 215
    iput-object p1, p0, Lu/aly/ba;->a:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/ba;->c(I)Lu/aly/ba$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lu/aly/ba;->a:Ljava/util/Map;

    const/4 v1, 0x0

    .line 179
    invoke-virtual {p0, v1}, Lu/aly/ba;->b(Z)V

    .line 180
    iput v1, p0, Lu/aly/ba;->b:I

    .line 181
    iput-object v0, p0, Lu/aly/ba;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 275
    sget-object v0, Lu/aly/ba;->i:Ljava/util/Map;

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

    .line 239
    iget-byte v0, p0, Lu/aly/ba;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/ba;->k:B

    return-void
.end method

.method public c()I
    .locals 1

    .line 185
    iget-object v0, p0, Lu/aly/ba;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/ba;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public c(I)Lu/aly/ba$e;
    .locals 0

    .line 267
    invoke-static {p1}, Lu/aly/ba$e;->a(I)Lu/aly/ba$e;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 262
    iput-object p1, p0, Lu/aly/ba;->c:Ljava/lang/String;

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
            "Lu/aly/bb;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lu/aly/ba;->a:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lu/aly/ba;->a:Ljava/util/Map;

    return-void
.end method

.method public f()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lu/aly/ba;->a:Ljava/util/Map;

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
    invoke-virtual {p0}, Lu/aly/ba;->a()Lu/aly/ba;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 220
    iget v0, p0, Lu/aly/ba;->b:I

    return v0
.end method

.method public i()V
    .locals 2

    .line 230
    iget-byte v0, p0, Lu/aly/ba;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ba;->k:B

    return-void
.end method

.method public j()Z
    .locals 2

    .line 235
    iget-byte v0, p0, Lu/aly/ba;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lu/aly/ba;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lu/aly/ba;->c:Ljava/lang/String;

    return-void
.end method

.method public m()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lu/aly/ba;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lu/aly/ba;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'property\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/ba;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lu/aly/ba;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 313
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/ba;->toString()Ljava/lang/String;

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
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Imprint("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "property:"

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v1, p0, Lu/aly/ba;->a:Ljava/util/Map;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 287
    :cond_0
    iget-object v1, p0, Lu/aly/ba;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version:"

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget v1, p0, Lu/aly/ba;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v1, p0, Lu/aly/ba;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 299
    :cond_1
    iget-object v1, p0, Lu/aly/ba;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ")"

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
