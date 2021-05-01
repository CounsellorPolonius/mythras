.class public Lu/aly/aa;
.super Ljava/lang/Object;
.source "StatTracer.java"

# interfaces
.implements Lu/aly/r;


# static fields
.field private static final h:Ljava/lang/String; = "successful_request"

.field private static final i:Ljava/lang/String; = "failed_requests "

.field private static final j:Ljava/lang/String; = "last_request_spent_ms"

.field private static final k:Ljava/lang/String; = "last_request_time"

.field private static final l:Ljava/lang/String; = "first_activate_time"

.field private static final m:Ljava/lang/String; = "last_req"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field private final d:I

.field private e:I

.field private f:J

.field private g:J

.field private n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x36ee80

    .line 16
    iput v0, p0, Lu/aly/aa;->d:I

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lu/aly/aa;->f:J

    .line 24
    iput-wide v0, p0, Lu/aly/aa;->g:J

    .line 36
    invoke-direct {p0, p1}, Lu/aly/aa;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lu/aly/ap;
    .locals 3

    .line 114
    invoke-static {p0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 116
    new-instance v0, Lu/aly/ap;

    invoke-direct {v0}, Lu/aly/ap;-><init>()V

    const-string v1, "failed_requests "

    const/4 v2, 0x0

    .line 118
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lu/aly/ap;->c(I)Lu/aly/ap;

    const-string v1, "last_request_spent_ms"

    .line 119
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lu/aly/ap;->d(I)Lu/aly/ap;

    const-string v1, "successful_request"

    .line 120
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lu/aly/ap;->a(I)Lu/aly/ap;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aa;->n:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "successful_request"

    const/4 v1, 0x0

    .line 43
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lu/aly/aa;->a:I

    const-string v0, "failed_requests "

    .line 44
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lu/aly/aa;->b:I

    const-string v0, "last_request_spent_ms"

    .line 46
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lu/aly/aa;->e:I

    const-string v0, "last_request_time"

    const-wide/16 v1, 0x0

    .line 47
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lu/aly/aa;->c:J

    const-string v0, "last_req"

    .line 49
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/aa;->f:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lu/aly/aa;->i()V

    return-void
.end method

.method public b()V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lu/aly/aa;->j()V

    return-void
.end method

.method public c()V
    .locals 0

    .line 137
    invoke-virtual {p0}, Lu/aly/aa;->g()V

    return-void
.end method

.method public d()V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lu/aly/aa;->h()V

    return-void
.end method

.method public e()I
    .locals 2

    .line 53
    iget v0, p0, Lu/aly/aa;->e:I

    const v1, 0x36ee80

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lu/aly/aa;->e:I

    :goto_0
    return v1
.end method

.method public f()Z
    .locals 5

    .line 57
    iget-wide v0, p0, Lu/aly/aa;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 58
    :goto_0
    iget-object v3, p0, Lu/aly/aa;->n:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/h;->h()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public g()V
    .locals 2

    .line 64
    iget v0, p0, Lu/aly/aa;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/aa;->a:I

    .line 66
    iget-wide v0, p0, Lu/aly/aa;->f:J

    iput-wide v0, p0, Lu/aly/aa;->c:J

    return-void
.end method

.method public h()V
    .locals 1

    .line 70
    iget v0, p0, Lu/aly/aa;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/aa;->b:I

    return-void
.end method

.method public i()V
    .locals 2

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/aa;->f:J

    return-void
.end method

.method public j()V
    .locals 6

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lu/aly/aa;->f:J

    sub-long v4, v0, v2

    long-to-int v0, v4

    iput v0, p0, Lu/aly/aa;->e:I

    return-void
.end method

.method public k()V
    .locals 4

    .line 82
    iget-object v0, p0, Lu/aly/aa;->n:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "successful_request"

    iget v2, p0, Lu/aly/aa;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "failed_requests "

    iget v2, p0, Lu/aly/aa;->b:I

    .line 85
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_spent_ms"

    iget v2, p0, Lu/aly/aa;->e:I

    .line 86
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_time"

    iget-wide v2, p0, Lu/aly/aa;->c:J

    .line 87
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_req"

    iget-wide v2, p0, Lu/aly/aa;->f:J

    .line 88
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public l()V
    .locals 4

    .line 94
    iget-object v0, p0, Lu/aly/aa;->n:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public m()Z
    .locals 5

    .line 98
    iget-wide v0, p0, Lu/aly/aa;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 99
    iget-object v0, p0, Lu/aly/aa;->n:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/aa;->g:J

    .line 102
    :cond_0
    iget-wide v0, p0, Lu/aly/aa;->g:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()J
    .locals 2

    .line 106
    invoke-virtual {p0}, Lu/aly/aa;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lu/aly/aa;->g:J

    :goto_0
    return-wide v0
.end method

.method public o()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lu/aly/aa;->f:J

    return-wide v0
.end method
