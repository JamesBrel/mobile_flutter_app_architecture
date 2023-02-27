// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';


// class MockClassNameRepositAbst extends Mock implements ClassNameRepositAbst {}


// void main() {
  // late MockClassNameRepositAbst _mockClassNameRepositAbst;
  // late ClassNameUsecase _classNameUsecase;

  // setUp(() {
  //   _mockClassNameRepositAbst = MockClassNameRepositAbst();
  //   _classNameUsecase =
  //       ClassNameUsecase(classNameRepositAbst: _mockClassNameRepositAbst);
  // });

  // group('ClassNameUsecase =>', () {
  //   test(
  //     'classNameUsecase should return true if the client make his registration with success',
  //     () async {
  //       //Arrange - Setup facts, Put Expected outputs or Initilize
  //       when(() => _mockClassNameRepositAbst.exampleFunction(
  //           exampleEntity: ExampleEntity())).thenAnswer((_) async => true);
  //       //Act - Call the function that is to be tested

  //       final response = await _classNameUsecase.call(
  //           exampleEntity: ExampleEntity());

  //       //Assert - Compare the actual result and expected result
  //       expect(response, true);
  //       verify(() => _mockClassNameRepositAbst.exampleFunction(
  //             exampleEntity: ExampleEntity(),
  //           ));
  //       verifyNoMoreInteractions(_mockClassNameRepositAbst);
  //     },
  //   );
  // });
// }
