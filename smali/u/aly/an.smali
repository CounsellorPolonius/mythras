.class public Lu/aly/an;
.super Ljava/lang/Object;
.source "ActiveUser.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/an$c;,
        Lu/aly/an$d;,
        Lu/aly/an$a;,
        Lu/aly/an$b;,
        Lu/aly/an$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/an;",
        "Lu/aly/an$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/an$e;",
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


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    new-instance v0, Lu/aly/dl;

    const-string v1, "ActiveUser"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/an;->d:Lu/aly/dl;

    .line 34
    new-instance v0, Lu/aly/db;

    const-string v1, "provider"

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/an;->e:Lu/aly/db;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "puid"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/an;->f:Lu/aly/db;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/an;->g:Ljava/util/Map;

    .line 39
    sget-object v0, Lu/aly/an;->g:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v4, Lu/aly/an$b;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lu/aly/an$b;-><init>(Lu/aly/an$1;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lu/aly/an;->g:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v4, Lu/aly/an$d;

    invoke-direct {v4, v5}, Lu/aly/an$d;-><init>(Lu/aly/an$1;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/an$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 111
    sget-object v1, Lu/aly/an$e;->a:Lu/aly/an$e;

    new-instance v4, Lu/aly/ct;

    const-string v5, "provider"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v5, v2, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lu/aly/an$e;->b:Lu/aly/an$e;

    new-instance v4, Lu/aly/ct;

    const-string v5, "puid"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v5, v2, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/an;->c:Ljava/util/Map;

    .line 116
    const-class v0, Lu/aly/an;

    sget-object v1, Lu/aly/an;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lu/aly/an;-><init>()V

    .line 127
    iput-object p1, p0, Lu/aly/an;->a:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lu/aly/an;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu/aly/an;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Lu/aly/an;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p1, Lu/aly/an;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/an;->a:Ljava/lang/String;

    .line 138
    :cond_0
    invoke-virtual {p1}, Lu/aly/an;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object p1, p1, Lu/aly/an;->b:Ljava/lang/String;

    iput-object p1, p0, Lu/aly/an;->b:Ljava/lang/String;

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

    .line 258
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/an;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 260
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

    .line 250
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/an;->b(Lu/aly/dg;)V
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

.method static synthetic k()Lu/aly/dl;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/an;->d:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic l()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/an;->e:Lu/aly/db;

    return-object v0
.end method

.method static synthetic m()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/an;->f:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/an$e;
    .locals 0

    .line 202
    invoke-static {p1}, Lu/aly/an$e;->a(I)Lu/aly/an$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/an;
    .locals 1

    .line 144
    new-instance v0, Lu/aly/an;

    invoke-direct {v0, p0}, Lu/aly/an;-><init>(Lu/aly/an;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lu/aly/an;
    .locals 0

    .line 158
    iput-object p1, p0, Lu/aly/an;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 206
    sget-object v0, Lu/aly/an;->g:Ljava/util/Map;

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

    .line 173
    iput-object p1, p0, Lu/aly/an;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/an;
    .locals 0

    .line 182
    iput-object p1, p0, Lu/aly/an;->b:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lu/aly/an;->a(I)Lu/aly/an$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lu/aly/an;->a:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lu/aly/an;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 210
    sget-object v0, Lu/aly/an;->g:Ljava/util/Map;

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

    .line 197
    iput-object p1, p0, Lu/aly/an;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lu/aly/an;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lu/aly/an;->a:Ljava/lang/String;

    return-void
.end method

.method public e()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lu/aly/an;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lu/aly/an;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lu/aly/an;->a()Lu/aly/an;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lu/aly/an;->b:Ljava/lang/String;

    return-void
.end method

.method public i()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lu/aly/an;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lu/aly/an;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'provider\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/an;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iget-object v0, p0, Lu/aly/an;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 243
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'puid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/an;->toString()Ljava/lang/String;

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

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActiveUser("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "provider:"

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lu/aly/an;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 222
    :cond_0
    iget-object v1, p0, Lu/aly/an;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "puid:"

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v1, p0, Lu/aly/an;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 230
    :cond_1
    iget-object v1, p0, Lu/aly/an;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ")"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
