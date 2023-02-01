codeunit 50100 Test
{
    [EventSubscriber(ObjectType::Table, Database::"Radio Show", 'OnBeforeValidateEvent', 'No.', true, true)]
    local procedure RunOnBeforeValidateEvent()
    begin
        Message('Hello World 1');
    end;

    [EventSubscriber(ObjectType::Page, Page::"Radio Show Card", 'OnBeforeValidateEvent', 'Radio Show Type', true, true)]
    local procedure RunOnBeforeValidateEvent2()
    begin
        Message('Hello World 2');
    end;
}
