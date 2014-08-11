.class public interface abstract Lcom/broadcom/bt/app/fm/IFMTestService;
.super Ljava/lang/Object;
.source "IFMTestService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/fm/IFMTestService$Stub;
    }
.end annotation


# virtual methods
.method public abstract init(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract tuneRadio(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
