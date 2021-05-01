.class Lcom/mrpoid/view/ListViewPathAdapter$1;
.super Ljava/lang/Object;
.source "ListViewPathAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/view/ListViewPathAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/view/ListViewPathAdapter;

.field final synthetic val$position:I

.field final synthetic val$tvPath:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/mrpoid/view/ListViewPathAdapter;ILandroid/widget/TextView;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/mrpoid/view/ListViewPathAdapter$1;->this$0:Lcom/mrpoid/view/ListViewPathAdapter;

    iput p2, p0, Lcom/mrpoid/view/ListViewPathAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/mrpoid/view/ListViewPathAdapter$1;->val$tvPath:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 80
    iget-object p1, p0, Lcom/mrpoid/view/ListViewPathAdapter$1;->this$0:Lcom/mrpoid/view/ListViewPathAdapter;

    invoke-static {p1}, Lcom/mrpoid/view/ListViewPathAdapter;->access$000(Lcom/mrpoid/view/ListViewPathAdapter;)Lcom/mrpoid/view/ListViewPathAdapter$OnPathOperateListener;

    move-result-object p1

    iget v0, p0, Lcom/mrpoid/view/ListViewPathAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/mrpoid/view/ListViewPathAdapter$1;->val$tvPath:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/mrpoid/view/ListViewPathAdapter$OnPathOperateListener;->onPathOperate(IILandroid/widget/TextView;)V

    return-void
.end method
