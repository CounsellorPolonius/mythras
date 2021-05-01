.class public Lu/aly/bg;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bg$c;,
        Lu/aly/bg$d;,
        Lu/aly/bg$a;,
        Lu/aly/bg$b;,
        Lu/aly/bg$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/bg;",
        "Lu/aly/bg$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/bg$e;",
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

.field private static final h:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field private i:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "Page"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bg;->d:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "page_name"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bg;->e:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "duration"

    const/16 v4, 0xa

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bg;->f:Lu/aly/db;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bg;->g:Ljava/util/Map;

    .line 40
    sget-object v0, Lu/aly/bg;->g:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v5, Lu/aly/bg$b;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lu/aly/bg$b;-><init>(Lu/aly/bg$1;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lu/aly/bg;->g:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v5, Lu/aly/bg$d;

    invoke-direct {v5, v6}, Lu/aly/bg$d;-><init>(Lu/aly/bg$1;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bg$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 114
    sget-object v1, Lu/aly/bg$e;->a:Lu/aly/bg$e;

    new-instance v5, Lu/aly/ct;

    const-string v6, "page_name"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v5, v6, v3, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lu/aly/bg$e;->b:Lu/aly/bg$e;

    new-instance v2, Lu/aly/ct;

    const-string v5, "duration"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v4}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v5, v3, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bg;->c:Ljava/util/Map;

    .line 119
    const-class v0, Lu/aly/bg;

    sget-object v1, Lu/aly/bg;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-byte v0, p0, Lu/aly/bg;->i:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lu/aly/bg;-><init>()V

    .line 130
    iput-object p1, p0, Lu/aly/bg;->a:Ljava/lang/String;

    .line 131
    iput-wide p2, p0, Lu/aly/bg;->b:J

    const/4 p1, 0x1

    .line 132
    invoke-virtual {p0, p1}, Lu/aly/bg;->b(Z)V

    return-void
.end method

.method public constructor <init>(Lu/aly/bg;)V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-byte v0, p0, Lu/aly/bg;->i:B

    .line 139
    iget-byte v0, p1, Lu/aly/bg;->i:B

    iput-byte v0, p0, Lu/aly/bg;->i:B

    .line 140
    invoke-virtual {p1}, Lu/aly/bg;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p1, Lu/aly/bg;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bg;->a:Ljava/lang/String;

    .line 143
    :cond_0
    iget-wide v0, p1, Lu/aly/bg;->b:J

    iput-wide v0, p0, Lu/aly/bg;->b:J

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

    .line 256
    :try_start_0
    iput-byte v0, p0, Lu/aly/bg;->i:B

    .line 257
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bg;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 259
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

    .line 247
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bg;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 249
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic k()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bg;->d:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic l()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bg;->e:Lu/aly/db;

    return-object v0
.end method

.method static synthetic m()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bg;->f:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/bg$e;
    .locals 0

    .line 205
    invoke-static {p1}, Lu/aly/bg$e;->a(I)Lu/aly/bg$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/bg;
    .locals 1

    .line 147
    new-instance v0, Lu/aly/bg;

    invoke-direct {v0, p0}, Lu/aly/bg;-><init>(Lu/aly/bg;)V

    return-object v0
.end method

.method public a(J)Lu/aly/bg;
    .locals 0

    .line 186
    iput-wide p1, p0, Lu/aly/bg;->b:J

    const/4 p1, 0x1

    .line 187
    invoke-virtual {p0, p1}, Lu/aly/bg;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bg;
    .locals 0

    .line 162
    iput-object p1, p0, Lu/aly/bg;->a:Ljava/lang/String;

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
    sget-object v0, Lu/aly/bg;->g:Ljava/util/Map;

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

    .line 177
    iput-object p1, p0, Lu/aly/bg;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/bg;->a(I)Lu/aly/bg$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lu/aly/bg;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0}, Lu/aly/bg;->b(Z)V

    const-wide/16 v0, 0x0

    .line 154
    iput-wide v0, p0, Lu/aly/bg;->b:J

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
    sget-object v0, Lu/aly/bg;->g:Ljava/util/Map;

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
    iget-byte v0, p0, Lu/aly/bg;->i:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bg;->i:B

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lu/aly/bg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lu/aly/bg;->a:Ljava/lang/String;

    return-void
.end method

.method public e()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lu/aly/bg;->a:Ljava/lang/String;

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

    .line 182
    iget-wide v0, p0, Lu/aly/bg;->b:J

    return-wide v0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/bg;->a()Lu/aly/bg;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 192
    iget-byte v0, p0, Lu/aly/bg;->i:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bg;->i:B

    return-void
.end method

.method public i()Z
    .locals 2

    .line 197
    iget-byte v0, p0, Lu/aly/bg;->i:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lu/aly/bg;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'page_name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bg;->toString()Ljava/lang/String;

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

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Page("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "page_name:"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Lu/aly/bg;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 225
    :cond_0
    iget-object v1, p0, Lu/aly/bg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "duration:"

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-wide v1, p0, Lu/aly/bg;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
