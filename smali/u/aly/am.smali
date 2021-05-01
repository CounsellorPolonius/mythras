.class public Lu/aly/am;
.super Ljava/lang/Object;
.source "ActivateMsg.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/am$c;,
        Lu/aly/am$d;,
        Lu/aly/am$a;,
        Lu/aly/am$b;,
        Lu/aly/am$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/am;",
        "Lu/aly/am$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/am$e;",
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

.field private static final f:I


# instance fields
.field public a:J

.field private g:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "ActivateMsg"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/am;->c:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "ts"

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/am;->d:Lu/aly/db;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/am;->e:Ljava/util/Map;

    .line 39
    sget-object v0, Lu/aly/am;->e:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v4, Lu/aly/am$b;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lu/aly/am$b;-><init>(Lu/aly/am$1;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lu/aly/am;->e:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v4, Lu/aly/am$d;

    invoke-direct {v4, v5}, Lu/aly/am$d;-><init>(Lu/aly/am$1;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/am$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 109
    sget-object v1, Lu/aly/am$e;->a:Lu/aly/am$e;

    new-instance v4, Lu/aly/ct;

    const-string v5, "ts"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v4, v5, v2, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/am;->b:Ljava/util/Map;

    .line 112
    const-class v0, Lu/aly/am;

    sget-object v1, Lu/aly/am;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-byte v0, p0, Lu/aly/am;->g:B

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lu/aly/am;-><init>()V

    .line 122
    iput-wide p1, p0, Lu/aly/am;->a:J

    const/4 p1, 0x1

    .line 123
    invoke-virtual {p0, p1}, Lu/aly/am;->a(Z)V

    return-void
.end method

.method public constructor <init>(Lu/aly/am;)V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-byte v0, p0, Lu/aly/am;->g:B

    .line 130
    iget-byte v0, p1, Lu/aly/am;->g:B

    iput-byte v0, p0, Lu/aly/am;->g:B

    .line 131
    iget-wide v0, p1, Lu/aly/am;->a:J

    iput-wide v0, p0, Lu/aly/am;->a:J

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

    .line 208
    :try_start_0
    iput-byte v0, p0, Lu/aly/am;->g:B

    .line 209
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/am;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 211
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

    .line 199
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/am;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 201
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic h()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/am;->c:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic i()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/am;->d:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/am$e;
    .locals 0

    .line 168
    invoke-static {p1}, Lu/aly/am$e;->a(I)Lu/aly/am$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/am;
    .locals 1

    .line 135
    new-instance v0, Lu/aly/am;

    invoke-direct {v0, p0}, Lu/aly/am;-><init>(Lu/aly/am;)V

    return-object v0
.end method

.method public a(J)Lu/aly/am;
    .locals 0

    .line 149
    iput-wide p1, p0, Lu/aly/am;->a:J

    const/4 p1, 0x1

    .line 150
    invoke-virtual {p0, p1}, Lu/aly/am;->a(Z)V

    return-object p0
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 172
    sget-object v0, Lu/aly/am;->e:Ljava/util/Map;

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

    .line 164
    iget-byte v0, p0, Lu/aly/am;->g:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/am;->g:B

    return-void
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/am;->a(I)Lu/aly/am$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v0}, Lu/aly/am;->a(Z)V

    const-wide/16 v0, 0x0

    .line 141
    iput-wide v0, p0, Lu/aly/am;->a:J

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 176
    sget-object v0, Lu/aly/am;->e:Ljava/util/Map;

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

.method public c()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lu/aly/am;->a:J

    return-wide v0
.end method

.method public d()V
    .locals 2

    .line 155
    iget-byte v0, p0, Lu/aly/am;->g:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/am;->g:B

    return-void
.end method

.method public e()Z
    .locals 2

    .line 160
    iget-byte v0, p0, Lu/aly/am;->g:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    return-void
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/am;->a()Lu/aly/am;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivateMsg("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ts:"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-wide v1, p0, Lu/aly/am;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
