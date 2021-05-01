.class public Lu/aly/bm;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bm$c;,
        Lu/aly/bm$d;,
        Lu/aly/bm$a;,
        Lu/aly/bm$b;,
        Lu/aly/bm$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/bm;",
        "Lu/aly/bm$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/bm$e;",
            "Lu/aly/ct;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lu/aly/dl;

.field private static final e:Lu/aly/db;

.field private static final f:Lu/aly/db;

.field private static final g:Ljava/util/Map;
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

.field private static final h:I = 0x0

.field private static final i:I = 0x1


# instance fields
.field public a:I

.field public b:I

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "Traffic"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bm;->d:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "upload_traffic"

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bm;->e:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "download_traffic"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bm;->f:Lu/aly/db;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bm;->g:Ljava/util/Map;

    .line 40
    sget-object v0, Lu/aly/bm;->g:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v4, Lu/aly/bm$b;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lu/aly/bm$b;-><init>(Lu/aly/bm$1;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lu/aly/bm;->g:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v4, Lu/aly/bm$d;

    invoke-direct {v4, v5}, Lu/aly/bm$d;-><init>(Lu/aly/bm$1;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bm$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 115
    sget-object v1, Lu/aly/bm$e;->a:Lu/aly/bm$e;

    new-instance v4, Lu/aly/ct;

    const-string v5, "upload_traffic"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v5, v2, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lu/aly/bm$e;->b:Lu/aly/bm$e;

    new-instance v4, Lu/aly/ct;

    const-string v5, "download_traffic"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v5, v2, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bm;->c:Ljava/util/Map;

    .line 120
    const-class v0, Lu/aly/bm;

    sget-object v1, Lu/aly/bm;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-byte v0, p0, Lu/aly/bm;->j:B

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lu/aly/bm;-><init>()V

    .line 131
    iput p1, p0, Lu/aly/bm;->a:I

    const/4 p1, 0x1

    .line 132
    invoke-virtual {p0, p1}, Lu/aly/bm;->a(Z)V

    .line 133
    iput p2, p0, Lu/aly/bm;->b:I

    .line 134
    invoke-virtual {p0, p1}, Lu/aly/bm;->b(Z)V

    return-void
.end method

.method public constructor <init>(Lu/aly/bm;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-byte v0, p0, Lu/aly/bm;->j:B

    .line 141
    iget-byte v0, p1, Lu/aly/bm;->j:B

    iput-byte v0, p0, Lu/aly/bm;->j:B

    .line 142
    iget v0, p1, Lu/aly/bm;->a:I

    iput v0, p0, Lu/aly/bm;->a:I

    .line 143
    iget p1, p1, Lu/aly/bm;->b:I

    iput p1, p0, Lu/aly/bm;->b:I

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

    .line 250
    :try_start_0
    iput-byte v0, p0, Lu/aly/bm;->j:B

    .line 251
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bm;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 253
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

    .line 241
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bm;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 243
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic k()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bm;->d:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic l()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bm;->e:Lu/aly/db;

    return-object v0
.end method

.method static synthetic m()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bm;->f:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/bm;
    .locals 1

    .line 147
    new-instance v0, Lu/aly/bm;

    invoke-direct {v0, p0}, Lu/aly/bm;-><init>(Lu/aly/bm;)V

    return-object v0
.end method

.method public a(I)Lu/aly/bm;
    .locals 0

    .line 163
    iput p1, p0, Lu/aly/bm;->a:I

    const/4 p1, 0x1

    .line 164
    invoke-virtual {p0, p1}, Lu/aly/bm;->a(Z)V

    return-object p0
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 209
    sget-object v0, Lu/aly/bm;->g:Ljava/util/Map;

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

    .line 178
    iget-byte v0, p0, Lu/aly/bm;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bm;->j:B

    return-void
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/bm;->d(I)Lu/aly/bm$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0}, Lu/aly/bm;->a(Z)V

    .line 153
    iput v0, p0, Lu/aly/bm;->a:I

    .line 154
    invoke-virtual {p0, v0}, Lu/aly/bm;->b(Z)V

    .line 155
    iput v0, p0, Lu/aly/bm;->b:I

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 213
    sget-object v0, Lu/aly/bm;->g:Ljava/util/Map;

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

    .line 201
    iget-byte v0, p0, Lu/aly/bm;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bm;->j:B

    return-void
.end method

.method public c()I
    .locals 1

    .line 159
    iget v0, p0, Lu/aly/bm;->a:I

    return v0
.end method

.method public c(I)Lu/aly/bm;
    .locals 0

    .line 186
    iput p1, p0, Lu/aly/bm;->b:I

    const/4 p1, 0x1

    .line 187
    invoke-virtual {p0, p1}, Lu/aly/bm;->b(Z)V

    return-object p0
.end method

.method public d(I)Lu/aly/bm$e;
    .locals 0

    .line 205
    invoke-static {p1}, Lu/aly/bm$e;->a(I)Lu/aly/bm$e;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 2

    .line 169
    iget-byte v0, p0, Lu/aly/bm;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bm;->j:B

    return-void
.end method

.method public e()Z
    .locals 2

    .line 174
    iget-byte v0, p0, Lu/aly/bm;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 182
    iget v0, p0, Lu/aly/bm;->b:I

    return v0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/bm;->a()Lu/aly/bm;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 192
    iget-byte v0, p0, Lu/aly/bm;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bm;->j:B

    return-void
.end method

.method public i()Z
    .locals 2

    .line 197
    iget-byte v0, p0, Lu/aly/bm;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()V
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

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Traffic("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "upload_traffic:"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget v1, p0, Lu/aly/bm;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "download_traffic:"

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Lu/aly/bm;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
