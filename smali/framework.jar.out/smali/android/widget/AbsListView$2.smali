.class Landroid/widget/AbsListView$2;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Landroid/widget/AbsListView$PerformClick;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3551
    iput-object p1, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    iput-object p2, p0, Landroid/widget/AbsListView$2;->val$child:Landroid/view/View;

    iput-object p3, p0, Landroid/widget/AbsListView$2;->val$performClick:Landroid/widget/AbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3554
    iget-object v0, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$802(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3555
    iget-object v0, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3556
    iget-object v0, p0, Landroid/widget/AbsListView$2;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3557
    iget-object v0, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3558
    iget-object v0, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 3559
    iget-object v0, p0, Landroid/widget/AbsListView$2;->val$performClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {v0}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 3561
    :cond_0
    return-void
.end method
