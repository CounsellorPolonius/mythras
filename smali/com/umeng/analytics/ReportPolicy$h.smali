.class public Lcom/umeng/analytics/ReportPolicy$h;
.super Lcom/umeng/analytics/ReportPolicy$g;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$g;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/umeng/analytics/ReportPolicy$h;->a:Landroid/content/Context;

    .line 116
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/umeng/analytics/ReportPolicy$h;->a:Landroid/content/Context;

    invoke-static {p1}, Lu/aly/bq;->k(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
