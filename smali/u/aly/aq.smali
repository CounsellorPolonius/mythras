.class public Lu/aly/aq;
.super Ljava/lang/Object;
.source "ControlPolicy.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/aq$c;,
        Lu/aly/aq$d;,
        Lu/aly/aq$a;,
        Lu/aly/aq$b;,
        Lu/aly/aq$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/aq;",
        "Lu/aly/aq$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/aq$e;",
            "Lu/aly/ct;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lu/aly/dl;

.field private static final d:Lu/aly/db;

.field private static final e:Ljava/util/Map;
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
.field public a:Lu/aly/bd;

.field private f:[Lu/aly/aq$e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    new-instance v0, Lu/aly/dl;

    const-string v1, "ControlPolicy"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/aq;->c:Lu/aly/dl;

    .line 34
    new-instance v0, Lu/aly/db;

    const-string v1, "latent"

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aq;->d:Lu/aly/db;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/aq;->e:Ljava/util/Map;

    .line 38
    sget-object v0, Lu/aly/aq;->e:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v3, Lu/aly/aq$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lu/aly/aq$b;-><init>(Lu/aly/aq$1;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lu/aly/aq;->e:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v3, Lu/aly/aq$d;

    invoke-direct {v3, v4}, Lu/aly/aq$d;-><init>(Lu/aly/aq$1;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/aq$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 107
    sget-object v1, Lu/aly/aq$e;->a:Lu/aly/aq$e;

    new-instance v3, Lu/aly/ct;

    const-string v4, "latent"

    new-instance v5, Lu/aly/cy;

    const-class v6, Lu/aly/bd;

    invoke-direct {v5, v2, v6}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    const/4 v2, 0x2

    invoke-direct {v3, v4, v2, v5}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/aq;->b:Ljava/util/Map;

    .line 110
    const-class v0, Lu/aly/aq;

    sget-object v1, Lu/aly/aq;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 103
    new-array v0, v0, [Lu/aly/aq$e;

    sget-object v1, Lu/aly/aq$e;->a:Lu/aly/aq$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/aq;->f:[Lu/aly/aq$e;

    return-void
.end method

.method public constructor <init>(Lu/aly/aq;)V
    .locals 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 103
    new-array v0, v0, [Lu/aly/aq$e;

    sget-object v1, Lu/aly/aq$e;->a:Lu/aly/aq$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/aq;->f:[Lu/aly/aq$e;

    .line 120
    invoke-virtual {p1}, Lu/aly/aq;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lu/aly/bd;

    iget-object p1, p1, Lu/aly/aq;->a:Lu/aly/bd;

    invoke-direct {v0, p1}, Lu/aly/bd;-><init>(Lu/aly/bd;)V

    iput-object v0, p0, Lu/aly/aq;->a:Lu/aly/bd;

    :cond_0
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

    .line 206
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/aq;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 208
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

    .line 198
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/aq;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 200
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic h()Lu/aly/dl;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/aq;->c:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic i()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/aq;->d:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/aq$e;
    .locals 0

    .line 159
    invoke-static {p1}, Lu/aly/aq$e;->a(I)Lu/aly/aq$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/aq;
    .locals 1

    .line 126
    new-instance v0, Lu/aly/aq;

    invoke-direct {v0, p0}, Lu/aly/aq;-><init>(Lu/aly/aq;)V

    return-object v0
.end method

.method public a(Lu/aly/bd;)Lu/aly/aq;
    .locals 0

    .line 139
    iput-object p1, p0, Lu/aly/aq;->a:Lu/aly/bd;

    return-object p0
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 163
    sget-object v0, Lu/aly/aq;->e:Ljava/util/Map;

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

    .line 154
    iput-object p1, p0, Lu/aly/aq;->a:Lu/aly/bd;

    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lu/aly/aq;->a(I)Lu/aly/aq$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lu/aly/aq;->a:Lu/aly/bd;

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 167
    sget-object v0, Lu/aly/aq;->e:Ljava/util/Map;

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

.method public c()Lu/aly/bd;
    .locals 1

    .line 135
    iget-object v0, p0, Lu/aly/aq;->a:Lu/aly/bd;

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lu/aly/aq;->a:Lu/aly/bd;

    return-void
.end method

.method public e()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lu/aly/aq;->a:Lu/aly/bd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lu/aly/aq;->a:Lu/aly/bd;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lu/aly/aq;->a:Lu/aly/bd;

    invoke-virtual {v0}, Lu/aly/bd;->j()V

    :cond_0
    return-void
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lu/aly/aq;->a()Lu/aly/aq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControlPolicy("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lu/aly/aq;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "latent:"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Lu/aly/aq;->a:Lu/aly/bd;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 180
    :cond_0
    iget-object v1, p0, Lu/aly/aq;->a:Lu/aly/bd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string v1, ")"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
