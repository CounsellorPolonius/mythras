.class public Lu/aly/bd;
.super Ljava/lang/Object;
.source "Latent.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bd$c;,
        Lu/aly/bd$d;,
        Lu/aly/bd$a;,
        Lu/aly/bd$b;,
        Lu/aly/bd$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/bd;",
        "Lu/aly/bd$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/bd$e;",
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

.field public b:J

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    new-instance v0, Lu/aly/dl;

    const-string v1, "Latent"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bd;->d:Lu/aly/dl;

    .line 34
    new-instance v0, Lu/aly/db;

    const-string v1, "latency"

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bd;->e:Lu/aly/db;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "interval"

    const/16 v4, 0xa

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bd;->f:Lu/aly/db;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bd;->g:Ljava/util/Map;

    .line 39
    sget-object v0, Lu/aly/bd;->g:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v5, Lu/aly/bd$b;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lu/aly/bd$b;-><init>(Lu/aly/bd$1;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lu/aly/bd;->g:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v5, Lu/aly/bd$d;

    invoke-direct {v5, v6}, Lu/aly/bd$d;-><init>(Lu/aly/bd$1;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bd$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 114
    sget-object v1, Lu/aly/bd$e;->a:Lu/aly/bd$e;

    new-instance v5, Lu/aly/ct;

    const-string v6, "latency"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v5, v6, v3, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lu/aly/bd$e;->b:Lu/aly/bd$e;

    new-instance v2, Lu/aly/ct;

    const-string v5, "interval"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v4}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v5, v3, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bd;->c:Ljava/util/Map;

    .line 119
    const-class v0, Lu/aly/bd;

    sget-object v1, Lu/aly/bd;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-byte v0, p0, Lu/aly/bd;->j:B

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lu/aly/bd;-><init>()V

    .line 130
    iput p1, p0, Lu/aly/bd;->a:I

    const/4 p1, 0x1

    .line 131
    invoke-virtual {p0, p1}, Lu/aly/bd;->a(Z)V

    .line 132
    iput-wide p2, p0, Lu/aly/bd;->b:J

    .line 133
    invoke-virtual {p0, p1}, Lu/aly/bd;->b(Z)V

    return-void
.end method

.method public constructor <init>(Lu/aly/bd;)V
    .locals 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-byte v0, p0, Lu/aly/bd;->j:B

    .line 140
    iget-byte v0, p1, Lu/aly/bd;->j:B

    iput-byte v0, p0, Lu/aly/bd;->j:B

    .line 141
    iget v0, p1, Lu/aly/bd;->a:I

    iput v0, p0, Lu/aly/bd;->a:I

    .line 142
    iget-wide v0, p1, Lu/aly/bd;->b:J

    iput-wide v0, p0, Lu/aly/bd;->b:J

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

    .line 249
    :try_start_0
    iput-byte v0, p0, Lu/aly/bd;->j:B

    .line 250
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bd;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 252
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

    .line 240
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bd;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 242
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic k()Lu/aly/dl;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bd;->d:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic l()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bd;->e:Lu/aly/db;

    return-object v0
.end method

.method static synthetic m()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bd;->f:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/bd;
    .locals 1

    .line 146
    new-instance v0, Lu/aly/bd;

    invoke-direct {v0, p0}, Lu/aly/bd;-><init>(Lu/aly/bd;)V

    return-object v0
.end method

.method public a(I)Lu/aly/bd;
    .locals 0

    .line 162
    iput p1, p0, Lu/aly/bd;->a:I

    const/4 p1, 0x1

    .line 163
    invoke-virtual {p0, p1}, Lu/aly/bd;->a(Z)V

    return-object p0
.end method

.method public a(J)Lu/aly/bd;
    .locals 0

    .line 185
    iput-wide p1, p0, Lu/aly/bd;->b:J

    const/4 p1, 0x1

    .line 186
    invoke-virtual {p0, p1}, Lu/aly/bd;->b(Z)V

    return-object p0
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 208
    sget-object v0, Lu/aly/bd;->g:Ljava/util/Map;

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

    .line 177
    iget-byte v0, p0, Lu/aly/bd;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bd;->j:B

    return-void
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lu/aly/bd;->c(I)Lu/aly/bd$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lu/aly/bd;->a(Z)V

    .line 152
    iput v0, p0, Lu/aly/bd;->a:I

    .line 153
    invoke-virtual {p0, v0}, Lu/aly/bd;->b(Z)V

    const-wide/16 v0, 0x0

    .line 154
    iput-wide v0, p0, Lu/aly/bd;->b:J

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 212
    sget-object v0, Lu/aly/bd;->g:Ljava/util/Map;

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

    .line 200
    iget-byte v0, p0, Lu/aly/bd;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bd;->j:B

    return-void
.end method

.method public c()I
    .locals 1

    .line 158
    iget v0, p0, Lu/aly/bd;->a:I

    return v0
.end method

.method public c(I)Lu/aly/bd$e;
    .locals 0

    .line 204
    invoke-static {p1}, Lu/aly/bd$e;->a(I)Lu/aly/bd$e;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 2

    .line 168
    iget-byte v0, p0, Lu/aly/bd;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bd;->j:B

    return-void
.end method

.method public e()Z
    .locals 2

    .line 173
    iget-byte v0, p0, Lu/aly/bd;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lu/aly/bd;->b:J

    return-wide v0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lu/aly/bd;->a()Lu/aly/bd;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 191
    iget-byte v0, p0, Lu/aly/bd;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bd;->j:B

    return-void
.end method

.method public i()Z
    .locals 2

    .line 196
    iget-byte v0, p0, Lu/aly/bd;->j:B

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
    .locals 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Latent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "latency:"

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget v1, p0, Lu/aly/bd;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "interval:"

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-wide v1, p0, Lu/aly/bd;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
