.class Lcom/mrpoid/view/PathChooseDialog$5;
.super Ljava/lang/Object;
.source "PathChooseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/view/PathChooseDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/view/PathChooseDialog;


# direct methods
.method constructor <init>(Lcom/mrpoid/view/PathChooseDialog;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$5;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 256
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
