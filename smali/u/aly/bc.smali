.class public Lu/aly/bc;
.super Ljava/lang/Object;
.source "InstantMsg.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bc$c;,
        Lu/aly/bc$d;,
        Lu/aly/bc$a;,
        Lu/aly/bc$b;,
        Lu/aly/bc$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/bc;",
        "Lu/aly/bc$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/bc$e;",
            "Lu/aly/ct;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lu/aly/dl;

.field private static final g:Lu/aly/db;

.field private static final h:Lu/aly/db;

.field private static final i:Lu/aly/db;

.field private static final j:Lu/aly/db;

.field private static final k:Ljava/util/Map;
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

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/aly/at;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/aly/av;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/aly/av;",
            ">;"
        }
    .end annotation
.end field

.field private l:[Lu/aly/bc$e;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "InstantMsg"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bc;->f:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "id"

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bc;->g:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "errors"

    const/4 v4, 0x2

    const/16 v5, 0xf

    invoke-direct {v0, v1, v5, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bc;->h:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "events"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bc;->i:Lu/aly/db;

    .line 38
    new-instance v0, Lu/aly/db;

    const-string v1, "game_events"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bc;->j:Lu/aly/db;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bc;->k:Ljava/util/Map;

    .line 42
    sget-object v0, Lu/aly/bc;->k:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v6, Lu/aly/bc$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lu/aly/bc$b;-><init>(Lu/aly/bc$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lu/aly/bc;->k:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v6, Lu/aly/bc$d;

    invoke-direct {v6, v7}, Lu/aly/bc$d;-><init>(Lu/aly/bc$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bc$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 123
    sget-object v1, Lu/aly/bc$e;->a:Lu/aly/bc$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "id"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lu/aly/bc$e;->b:Lu/aly/bc$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "errors"

    new-instance v6, Lu/aly/cv;

    new-instance v7, Lu/aly/cy;

    const-class v8, Lu/aly/at;

    const/16 v9, 0xc

    invoke-direct {v7, v9, v8}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v6, v5, v7}, Lu/aly/cv;-><init>(BLu/aly/cu;)V

    invoke-direct {v2, v3, v4, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lu/aly/bc$e;->c:Lu/aly/bc$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "events"

    new-instance v6, Lu/aly/cv;

    new-instance v7, Lu/aly/cy;

    const-class v8, Lu/aly/av;

    invoke-direct {v7, v9, v8}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v6, v5, v7}, Lu/aly/cv;-><init>(BLu/aly/cu;)V

    invoke-direct {v2, v3, v4, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lu/aly/bc$e;->d:Lu/aly/bc$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "game_events"

    new-instance v6, Lu/aly/cv;

    new-instance v7, Lu/aly/cy;

    const-class v8, Lu/aly/av;

    invoke-direct {v7, v9, v8}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v6, v5, v7}, Lu/aly/cv;-><init>(BLu/aly/cu;)V

    invoke-direct {v2, v3, v4, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bc;->e:Ljava/util/Map;

    .line 135
    const-class v0, Lu/aly/bc;

    sget-object v1, Lu/aly/bc;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 119
    new-array v0, v0, [Lu/aly/bc$e;

    sget-object v1, Lu/aly/bc$e;->b:Lu/aly/bc$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/bc$e;->c:Lu/aly/bc$e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/bc$e;->d:Lu/aly/bc$e;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/bc;->l:[Lu/aly/bc$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lu/aly/bc;-><init>()V

    .line 145
    iput-object p1, p0, Lu/aly/bc;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu/aly/bc;)V
    .locals 4

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 119
    new-array v0, v0, [Lu/aly/bc$e;

    sget-object v1, Lu/aly/bc$e;->b:Lu/aly/bc$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/bc$e;->c:Lu/aly/bc$e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/bc$e;->d:Lu/aly/bc$e;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/bc;->l:[Lu/aly/bc$e;

    .line 152
    invoke-virtual {p1}, Lu/aly/bc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p1, Lu/aly/bc;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bc;->a:Ljava/lang/String;

    .line 155
    :cond_0
    invoke-virtual {p1}, Lu/aly/bc;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object v1, p1, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/at;

    .line 158
    new-instance v3, Lu/aly/at;

    invoke-direct {v3, v2}, Lu/aly/at;-><init>(Lu/aly/at;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_1
    iput-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    .line 162
    :cond_2
    invoke-virtual {p1}, Lu/aly/bc;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    iget-object v1, p1, Lu/aly/bc;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/aly/av;

    .line 165
    new-instance v3, Lu/aly/av;

    invoke-direct {v3, v2}, Lu/aly/av;-><init>(Lu/aly/av;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    :cond_3
    iput-object v0, p0, Lu/aly/bc;->c:Ljava/util/List;

    .line 169
    :cond_4
    invoke-virtual {p1}, Lu/aly/bc;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object p1, p1, Lu/aly/bc;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/av;

    .line 172
    new-instance v2, Lu/aly/av;

    invoke-direct {v2, v1}, Lu/aly/av;-><init>(Lu/aly/av;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 174
    :cond_5
    iput-object v0, p0, Lu/aly/bc;->d:Ljava/util/List;

    :cond_6
    return-void
.end method

.method static synthetic A()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bc;->j:Lu/aly/db;

    return-object v0
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 407
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bc;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 409
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

    .line 399
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bc;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 401
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic w()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bc;->f:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic x()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bc;->g:Lu/aly/db;

    return-object v0
.end method

.method static synthetic y()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bc;->h:Lu/aly/db;

    return-object v0
.end method

.method static synthetic z()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/bc;->i:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/bc$e;
    .locals 0

    .line 332
    invoke-static {p1}, Lu/aly/bc$e;->a(I)Lu/aly/bc$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/bc;
    .locals 1

    .line 179
    new-instance v0, Lu/aly/bc;

    invoke-direct {v0, p0}, Lu/aly/bc;-><init>(Lu/aly/bc;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bc;
    .locals 0

    .line 195
    iput-object p1, p0, Lu/aly/bc;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lu/aly/bc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/aly/at;",
            ">;)",
            "Lu/aly/bc;"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lu/aly/bc;->b:Ljava/util/List;

    return-object p0
.end method

.method public a(Lu/aly/at;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    .line 226
    :cond_0
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lu/aly/av;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lu/aly/bc;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/bc;->c:Ljava/util/List;

    .line 265
    :cond_0
    iget-object v0, p0, Lu/aly/bc;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 336
    sget-object v0, Lu/aly/bc;->k:Ljava/util/Map;

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

    .line 210
    iput-object p1, p0, Lu/aly/bc;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;)Lu/aly/bc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/aly/av;",
            ">;)",
            "Lu/aly/bc;"
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lu/aly/bc;->c:Ljava/util/List;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/bc;->a(I)Lu/aly/bc$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lu/aly/bc;->a:Ljava/lang/String;

    .line 185
    iput-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    .line 186
    iput-object v0, p0, Lu/aly/bc;->c:Ljava/util/List;

    .line 187
    iput-object v0, p0, Lu/aly/bc;->d:Ljava/util/List;

    return-void
.end method

.method public b(Lu/aly/av;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lu/aly/bc;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/bc;->d:Ljava/util/List;

    .line 304
    :cond_0
    iget-object v0, p0, Lu/aly/bc;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 340
    sget-object v0, Lu/aly/bc;->k:Ljava/util/Map;

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

    .line 249
    iput-object p1, p0, Lu/aly/bc;->b:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/util/List;)Lu/aly/bc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/aly/av;",
            ">;)",
            "Lu/aly/bc;"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lu/aly/bc;->d:Ljava/util/List;

    return-object p0
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 288
    iput-object p1, p0, Lu/aly/bc;->c:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lu/aly/bc;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 327
    iput-object p1, p0, Lu/aly/bc;->d:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()I
    .locals 1

    .line 215
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/bc;->a()Lu/aly/bc;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lu/aly/at;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu/aly/at;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    return-object v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    return-void
.end method

.method public k()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lu/aly/bc;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()I
    .locals 1

    .line 254
    iget-object v0, p0, Lu/aly/bc;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/bc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public m()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lu/aly/av;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lu/aly/bc;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/bc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu/aly/av;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lu/aly/bc;->c:Ljava/util/List;

    return-object v0
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lu/aly/bc;->c:Ljava/util/List;

    return-void
.end method

.method public p()Z
    .locals 1

    .line 283
    iget-object v0, p0, Lu/aly/bc;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()I
    .locals 1

    .line 293
    iget-object v0, p0, Lu/aly/bc;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/bc;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public r()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lu/aly/av;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lu/aly/bc;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu/aly/bc;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu/aly/av;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lu/aly/bc;->d:Ljava/util/List;

    return-object v0
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lu/aly/bc;->d:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstantMsg("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id:"

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v1, p0, Lu/aly/bc;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 352
    :cond_0
    iget-object v1, p0, Lu/aly/bc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :goto_0
    invoke-virtual {p0}, Lu/aly/bc;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "errors:"

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v1, p0, Lu/aly/bc;->b:Ljava/util/List;

    if-nez v1, :cond_1

    const-string v1, "null"

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 361
    :cond_1
    iget-object v1, p0, Lu/aly/bc;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 365
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lu/aly/bc;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", "

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "events:"

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v1, p0, Lu/aly/bc;->c:Ljava/util/List;

    if-nez v1, :cond_3

    const-string v1, "null"

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 371
    :cond_3
    iget-object v1, p0, Lu/aly/bc;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lu/aly/bc;->u()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ", "

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "game_events:"

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-object v1, p0, Lu/aly/bc;->d:Ljava/util/List;

    if-nez v1, :cond_5

    const-string v1, "null"

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 381
    :cond_5
    iget-object v1, p0, Lu/aly/bc;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    const-string v1, ")"

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lu/aly/bc;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/bc;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
