.class public Lu/aly/ay;
.super Ljava/lang/Object;
.source "IdSnapshot.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/ay$c;,
        Lu/aly/ay$d;,
        Lu/aly/ay$a;,
        Lu/aly/ay$b;,
        Lu/aly/ay$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/ay;",
        "Lu/aly/ay$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/ay$e;",
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


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field private l:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "IdSnapshot"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ay;->e:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "identity"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ay;->f:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "ts"

    const/16 v4, 0xa

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ay;->g:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "version"

    const/16 v5, 0x8

    const/4 v6, 0x3

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ay;->h:Lu/aly/db;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ay;->i:Ljava/util/Map;

    .line 41
    sget-object v0, Lu/aly/ay;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v6, Lu/aly/ay$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lu/aly/ay$b;-><init>(Lu/aly/ay$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/ay;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v6, Lu/aly/ay$d;

    invoke-direct {v6, v7}, Lu/aly/ay$d;-><init>(Lu/aly/ay$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ay$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 120
    sget-object v1, Lu/aly/ay$e;->a:Lu/aly/ay$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "identity"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v3, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lu/aly/ay$e;->b:Lu/aly/ay$e;

    new-instance v2, Lu/aly/ct;

    const-string v6, "ts"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v4}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v6, v3, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lu/aly/ay$e;->c:Lu/aly/ay$e;

    new-instance v2, Lu/aly/ct;

    const-string v4, "version"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v4, v3, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ay;->d:Ljava/util/Map;

    .line 127
    const-class v0, Lu/aly/ay;

    sget-object v1, Lu/aly/ay;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-byte v0, p0, Lu/aly/ay;->l:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lu/aly/ay;-><init>()V

    .line 139
    iput-object p1, p0, Lu/aly/ay;->a:Ljava/lang/String;

    .line 140
    iput-wide p2, p0, Lu/aly/ay;->b:J

    const/4 p1, 0x1

    .line 141
    invoke-virtual {p0, p1}, Lu/aly/ay;->b(Z)V

    .line 142
    iput p4, p0, Lu/aly/ay;->c:I

    .line 143
    invoke-virtual {p0, p1}, Lu/aly/ay;->c(Z)V

    return-void
.end method

.method public constructor <init>(Lu/aly/ay;)V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-byte v0, p0, Lu/aly/ay;->l:B

    .line 150
    iget-byte v0, p1, Lu/aly/ay;->l:B

    iput-byte v0, p0, Lu/aly/ay;->l:B

    .line 151
    invoke-virtual {p1}, Lu/aly/ay;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p1, Lu/aly/ay;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ay;->a:Ljava/lang/String;

    .line 154
    :cond_0
    iget-wide v0, p1, Lu/aly/ay;->b:J

    iput-wide v0, p0, Lu/aly/ay;->b:J

    .line 155
    iget p1, p1, Lu/aly/ay;->c:I

    iput p1, p0, Lu/aly/ay;->c:I

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

    .line 298
    :try_start_0
    iput-byte v0, p0, Lu/aly/ay;->l:B

    .line 299
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/ay;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 301
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

    .line 289
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/ay;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 291
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic n()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ay;->e:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic o()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ay;->f:Lu/aly/db;

    return-object v0
.end method

.method static synthetic p()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ay;->g:Lu/aly/db;

    return-object v0
.end method

.method static synthetic q()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ay;->h:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/ay;
    .locals 1

    .line 159
    new-instance v0, Lu/aly/ay;

    invoke-direct {v0, p0}, Lu/aly/ay;-><init>(Lu/aly/ay;)V

    return-object v0
.end method

.method public a(I)Lu/aly/ay;
    .locals 0

    .line 223
    iput p1, p0, Lu/aly/ay;->c:I

    const/4 p1, 0x1

    .line 224
    invoke-virtual {p0, p1}, Lu/aly/ay;->c(Z)V

    return-object p0
.end method

.method public a(J)Lu/aly/ay;
    .locals 0

    .line 200
    iput-wide p1, p0, Lu/aly/ay;->b:J

    const/4 p1, 0x1

    .line 201
    invoke-virtual {p0, p1}, Lu/aly/ay;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/ay;
    .locals 0

    .line 176
    iput-object p1, p0, Lu/aly/ay;->a:Ljava/lang/String;

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
    sget-object v0, Lu/aly/ay;->i:Ljava/util/Map;

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

    .line 191
    iput-object p1, p0, Lu/aly/ay;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/ay;->c(I)Lu/aly/ay$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lu/aly/ay;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Lu/aly/ay;->b(Z)V

    const-wide/16 v1, 0x0

    .line 166
    iput-wide v1, p0, Lu/aly/ay;->b:J

    .line 167
    invoke-virtual {p0, v0}, Lu/aly/ay;->c(Z)V

    .line 168
    iput v0, p0, Lu/aly/ay;->c:I

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
    sget-object v0, Lu/aly/ay;->i:Ljava/util/Map;

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
    iget-byte v0, p0, Lu/aly/ay;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/ay;->l:B

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lu/aly/ay;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lu/aly/ay$e;
    .locals 0

    .line 242
    invoke-static {p1}, Lu/aly/ay$e;->a(I)Lu/aly/ay$e;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)V
    .locals 2

    .line 238
    iget-byte v0, p0, Lu/aly/ay;->l:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/ay;->l:B

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lu/aly/ay;->a:Ljava/lang/String;

    return-void
.end method

.method public e()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lu/aly/ay;->a:Ljava/lang/String;

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

    .line 196
    iget-wide v0, p0, Lu/aly/ay;->b:J

    return-wide v0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/ay;->a()Lu/aly/ay;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 206
    iget-byte v0, p0, Lu/aly/ay;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ay;->l:B

    return-void
.end method

.method public i()Z
    .locals 2

    .line 211
    iget-byte v0, p0, Lu/aly/ay;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .line 219
    iget v0, p0, Lu/aly/ay;->c:I

    return v0
.end method

.method public k()V
    .locals 2

    .line 229
    iget-byte v0, p0, Lu/aly/ay;->l:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ay;->l:B

    return-void
.end method

.method public l()Z
    .locals 2

    .line 234
    iget-byte v0, p0, Lu/aly/ay;->l:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lu/aly/ay;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'identity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/ay;->toString()Ljava/lang/String;

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

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdSnapshot("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "identity:"

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Lu/aly/ay;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 262
    :cond_0
    iget-object v1, p0, Lu/aly/ay;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts:"

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-wide v1, p0, Lu/aly/ay;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version:"

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget v1, p0, Lu/aly/ay;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
